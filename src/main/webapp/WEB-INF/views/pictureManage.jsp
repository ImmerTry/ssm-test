<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/8/7
  Time: 下午5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片管理</title>
    <link rel="stylesheet" href="../../statics/layui/css/layui.css">
</head>
<body>
<div class="layui-container">
    <div class="layui-row" style="margin-top: 20px;">
        <div class="layui-col-md12">
            <button class="layui-btn layui-btn-normal addPicBtn">
                <i class="layui-icon">&#xe654;</i>添加图片
            </button>
            <button class="layui-btn layui-btn-danger" data-type="getCheckData">
                <i class="layui-icon">&#x1006;</i>删除图片
            </button>
        </div>
    </div>


    <div class="layui-row">
        <table id="pictureTable" lay-filter="pictureTable"></table>
    </div>
    <form class="layui-form" id="pictureModal" style="display: none;">
        <div class="layui-form-item">
            <label class="layui-form-label">商品ID：</label>
            <div class="layui-input-block">
                <input type="text" name="itemId" id="itemId" placeholder="商品ID" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">分类ID</label>
            <div class="layui-input-block">
                <select name="classId" id="claSelect" lay-filter="claSelect">
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">图片上传：</label>
            <div class="layui-input-block">
                <button type="button" class="layui-btn" id="upload">
                    <i class="layui-icon">&#xe67c;</i>选择图片（最多选择5张，单张图片最大为1M）
                </button>
                <button type="button" class="layui-btn" id="uploadBtn">开始上传</button>
                <button type="button" class="layui-btn" id="cleanImgs"><i class="fa fa-trash-o fa-lg"></i>清空图片预览
                </button>
            </div>
            <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                预览图：
                <div class="layui-upload-list" id="preview"></div>
            </blockquote>
        </div>
        <input type="text" id="imgUrls" name="imgUrls" style="display: none;" class="layui-input">
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="addPicture" id="addPicture">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

</div>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">下架</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/layui/layui.js"></script>
<script>
    layui.use(["form", "table", "laypage", "layer", "upload"], function () {
        var form = layui.form
            , laypage = layui.laypage
            , layer = layui.layer
            , table = layui.table
            , upload = layui.upload;

        /**
         * 表格渲染
         */
        table.render({
            elem: '#pictureTable'
            // , height: 315
            , url: '/picture/show.action' //数据接口
            , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['count', 'prev', 'page', 'next', 'limit', 'skip'] //自定义分页布局
                //,curr: 5 //设定初始在第 5 页
                , groups: 5 //只显示 1 个连续页码
                // ,first: false //不显示首页
                // ,last: false //不显示尾页
            }
            , width: 1000
            , limit: 10
            , limits: [10, 20, 30]
            , cols: [[ //表头
                {type: 'checkbox'}
                , {field: 'itemId', title: '商品ID', sort: true}
                , {field: 'picture', width: 200, align: 'center', title: '图片'}
                , {field: 'itemName', width: 150, title: '图片名称'}
                , {field: 'picturePath', width: 200, title: '图片地址'}
                , {field: 'classId', align: 'center', title: '分类ID', sort: true}
                , {title: '操作', width: 180, templet: '#barDemo'}
            ]]
            , id: 'idTest'
        });
        /**
         * 批量删除
         * @type {pe}
         */
        var $ = layui.$, active = {
            getCheckData: function () { //获取选中数据
                var checkStatus = table.checkStatus('idTest')
                    , data = checkStatus.data;
                // layer.alert(JSON.stringify(data));
                var str = "";
                if (data.length > 0) {
                    for (var i = 0; i < data.length; i++) {
                        str += data[i].itemId + ",";
                    }
                    layer.confirm('确定删除' + data.length + '条选中的信息？', {
                        icon: 3,
                        title: '提示信息'
                    }, function (index) {
                        var index = layer.msg('删除中，请稍候', {
                            icon: 16,
                            time: false,
                            shade: 0.8
                        });
                        setTimeout(function () {
                            //删除数据
                            $.post("/picture/deletePictureInfo.action", {
                                "str": str,
                                // token: localStorage.getItem("token")
                            }, function (result) {
                                if (result.success) {
                                    layer.msg('已删除!', {
                                        icon: 1,
                                        time: 1000,
                                        end: function () {
                                            window.location.reload();
                                        }
                                    });
                                } else {
                                    layer.msg('删除失败', {
                                        icon: 2,
                                        time: 1000,
                                        end: function () {
                                            window.location.reload();
                                        }
                                    });
                                }
                            });

                            form.render();
                            layer.close(index);
                        }, 2000);
                    })
                } else {
                    layer.msg("请选择需要删除的图片");
                }

            }
        };
        $('.layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
        /**
         * 表格 工具条监听事件
         *
         */
        table.on('tool(pictureTable)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            if (layEvent === 'detail') { //查看
                //do somehing
            } else if (layEvent === 'del') { //删除
                layer.confirm('真的删除行么', function (index) {

                    $.ajax({
                        url: '/picture/delete.action'
                        , data: {"itemId": data.itemId}
                        , type: 'post'
                        , dataType: 'json'
                        , success: function (data) {
                            if (data.success) {
                                obj.del();
                                layer.close(index);
                                layer.msg("删除成功", {icon: 6});
                            } else {
                                layer.msg("删除失败", {icon: 5});
                            }
                        }
                    });
                });
            } else if (layEvent === 'edit') { //编辑
                //do something

                //同步更新缓存对应的值
                obj.update({
                    username: '123'
                    , title: 'xxx'
                });
            }
        });

        /**
         * 用户点击添加图片按钮触发
         */
        $(".addPicBtn").on('click', function () {

            layer.open({
                type: 1,
                area: ['800px', '500px'],
                title: "图片上传",
                content: $("#pictureModal")
            });
            $("select[name=classId]").empty();
            /* 异步获取分类数据填充到分类ID Select */
            var url = "/cla/show.action";
            $.post(url, function (data) {
                var claLists = data.claLists
                    , claSelect = $("#claSelect");
                // console.log(typeof data);
                $.each(claLists, function (index, item) {
                    // console.log(claNames);
                    var claOption = $("<option value='" + item.classId + "'>" + item.className + "</option>");
                    claSelect.append(claOption);
                });
                form.render();
            });
        });
        /**
         * 渲染upload插件
         */
        var success = 0
            , fail = 0
            , imgurls = "";
        upload.render({
            elem: '#upload'
            , url: '/picture/upload.action'
            , multiple: true    //支持多文件上传
            , auto: false //选择文件后不自动上传
            , field: 'file'
            , size: 1024  //上传图片大小
            , number: 5   //最多上传数量
            , bindAction: "#uploadBtn" //指向一个按钮触发上传
            , before: function (obj) {
                obj.preview(function (index, file, result) {
                    $('#preview').append('<img src="' + result
                        + '" alt="' + file.name
                        + '"height="92px" width="92px" class="layui-upload-img uploadImgPreView">')
                    //这里还可以做一些 append 文件列表 DOM 的操作

                    //obj.upload(index, file); //对上传失败的单个文件重新上传，一般在某个事件中使用
                    //delete files[index]; //删除列表中对应的文件，一般在某个事件中使用
                });
            }
            , done: function (res) {
                // console.log(res.code)
                //每个图片上传结束的回调，成功的话，就把新图片的名字保存起来，作为数据提交
                //如果上传失败
                if (res.code > 0) {
                    fail++;
                    return layer.msg('上传失败');
                } else {    //上传成功
                    success++;
                    imgurls = imgurls + "" + res.data.src + ",";
                    $('#imgUrls').val(imgurls);
                }

                //打印后台传回的地址: 把地址放入一个隐藏的input中, 和表单一起提交到后台, 此处略..
                // layer.msg('上传成功');
            }
            , allDone: function (obj) {
                layer.msg("总共要上传图片总数为：" + (fail + success) + "\n"
                    + "其中上传成功图片数为：" + success + "\n"
                    + "其中上传失败图片数为：" + fail
                )
            }

        });
        /**
         * 清空预览的图片
         * 原因：如果已经存在预览的图片的话，再次点击上选择图片时，预览图片会不断累加
         * 表面上做上传成功的个数清0
         */
        $("#cleanImgs").click(function () {
            success = 0;
            fail = 0;
            $('#preview').html("");
            $('#imgUrls').val("");
        });
        /**
         * 图片上传保存
         */
        form.on('submit(addPicture)', function (data) {
            var pictureInfo = data.field;
            console.log(pictureInfo);
            var itemId = $("#itemId").val()
                , classId = $("#claSelect").val()
                , imgUrls = $("#imgUrls").val();
            $.ajax({
                type: "POST",
                url: '/picture/save.action',
                data: {
                    itemId: itemId,
                    classId: classId,
                    picturePath: imgUrls,
                },
                success: function (data) {
                    if (data.success) {
                        layer.alert("保存成功");
                    } else {
                        layer.alert("保存失败");
                    }
                }
            });
        });

    });
</script>
</body>
</html>
