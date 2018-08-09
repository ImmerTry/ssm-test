<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/7/8
  Time: 下午2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品管理</title>
    <link rel="stylesheet" href="../../statics/css/iconfont.css">
    <link rel="stylesheet" href="../../statics/layui/css/layui.css">
</head>
<body>
<div class="layui-container">

    <!-- 顶部列 -->
    <div class="layui-row" style="margin-top: 20px;">
        <div class="layui-col-md12">
            <button class="layui-btn layui-btn-normal addItemBtn">
                <i class="layui-icon">&#xe654;</i>添加
            </button>
            <button class="layui-btn layui-btn-danger" data-type="getCheckData">
                <i class="layui-icon">&#x1006;</i>删除
            </button>
        </div>
    </div>
    <!-- 表格列 -->
    <div class="layui-row">
        <div class="layui-col-md12">
            <table class="layui-table" id="itemTable" lay-filter="itemTable">
            </table>
        </div>
    </div>
    <!-- 需要弹出的添加商品界面 -->
    <div class="layui-row" id="addItemModal" style="display: none;">
        <div class="layui-col-md10">
            <form class="layui-form" lay-filter="addFrom">
                <div class="layui-form-item">
                    <label class="layui-form-label">商品ID：</label>
                    <div class="layui-input-block">
                        <input type="text" name="itemId" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品名：</label>
                    <div class="layui-input-block">
                        <input type="text" name="itemName" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格：</label>
                    <div class="layui-input-block">
                        <input type="text" name="price" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">分类ID：</label>
                    <div class="layui-input-block">
                        <select class="layui-input" id="claSelect" name="classId" lay-filter="claSelect">
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品说明：</label>
                    <div class="layui-input-block">
                        <input type="text" name="remark" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品简介：</label>
                    <div class="layui-input-block">
                        <input type="text" name="description" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="add">立即提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- 需要弹出的编辑商品界面 -->
    <div class="layui-row" id="editItemModal"style="display: none">
        <div class="layui-col-md10">
            <form class="layui-form" lay-filter="editForm">
                <div class="layui-form-item">
                    <label class="layui-form-label">商品ID：</label>
                    <div class="layui-input-block">
                        <input type="text" id="itemId" name="itemId" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品名：</label>
                    <div class="layui-input-block">
                        <input type="text" id="itemName" name="itemName" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格：</label>
                    <div class="layui-input-block">
                        <input type="text" id="price" name="price" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">分类ID：</label>
                    <div class="layui-input-block">
                        <select class="layui-input" name="classId" id="editClaSelect">
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品说明：</label>
                    <div class="layui-input-block">
                        <input type="text" id="remark" name="remark" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品简介：</label>
                    <div class="layui-input-block">
                        <input type="text" id="description" name="description" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="edit">修改</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/html" id="itemTpl">
    <button class='layui-btn layui-btn-xs layui-btn-normal' lay-event="edit"><i class='layui-icon'>&#xe642;</i>编辑
    </button>
    <button class='layui-btn layui-btn-xs layui-btn-danger' lay-event="del"><i class='layui-icon'>&#xe640;</i>删除
    </button>
</script>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/layui/layui.js"></script>
<script type="text/javascript">

    layui.use(["form", "table", "laypage", "layer"], function () {
        var form = layui.form
            , laypage = layui.laypage
            , layer = layui.layer
            , table = layui.table;

        table.render({
            elem: '#itemTable'
            // , skin: 'line ' //行边框风格
            // , even: true //开启隔行背景
            , size: 'lg' //小尺寸的表格
            // ,height: 600
            , width: 1000
            , url: '/item/show.action' //数据接口
            , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['count', 'prev', 'page', 'next', 'limit', 'skip'] //自定义分页布局
                //,curr: 5 //设定初始在第 5 页
                , groups: 5 //只显示 1 个连续页码
                // ,first: false //不显示首页
                // ,last: false //不显示尾页
            }
            , limit: 10
            , limits: [10, 20, 30]
            , cols: [[ //表头
                {type: 'checkbox'}
                , {field: 'itemId', title: '商品ID', width: 125, sort: true}
                , {field: 'itemName', title: '名称', width: 125}
                , {field: 'price', title: '价格', align: 'center', width: 80, sort: true}
                , {field: 'classId', title: '分类ID', align: 'center', width: 80}
                , {field: 'remark', title: '商品说明', width: 175}
                , {field: 'description', title: '商品简介', width: 175}
                , {title: '操作', templet: '#itemTpl', width: 183}
            ]]
            , id: 'idTest'
        });
        <!--批量删除-->
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
                            $.post("/item/deleteItemInfo.action", {
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
                    layer.msg("请选择需要删除的商品");
                }

            }
        };
        $('.layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        //监听表格复选框选择
        table.on('checkbox(itemTable)', function (obj) {
            console.log(obj);
        });

        <!--table工具条-->
        table.on('tool(itemTable)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
                , tr = obj.tr; //获得当前行 tr 的DOM对象
            if (layEvent === 'detail') { //查看
                //do somehing
            } else if (layEvent === 'del') { //删除
                layer.confirm('确认删除此行数据么', function (index) {
                    //向服务端发送删除指令
                    $.ajax({
                        url: "/item/delete.action",
                        type: "POST",
                        data: {"itemId": data.itemId},
                        dataType: "json",
                        success: function (data) {

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
                // layer.alert('编辑行：<br>' + JSON.stringify(data));
                var editClaId = data.classId;
                layer.open({
                    type: 1,
                    title: "编辑商品",
                    area: ["40%"],
                    content: $("#editItemModal"),
                });
                $("select[name=classId]").empty();//清空
                var url = "/cla/show.action";
                $.post(url, function (result) {
                    var claLists = result.claLists
                        , claSelect = $("#editClaSelect");
                    // console.log(typeof data);
                    $.each(claLists, function (index, item) {
                        // console.log(claNames);
                        var claOption = $("<option value='" + item.classId + "'>" + item.className + "</option>");
                        claSelect.append(claOption);
                    });
                    $("#editClaSelect option[value='" + editClaId + "']").attr("selected", "selected"); //根据表格中的claId选中
                    form.render();
                });
                <!--编辑初始化赋值-->
                form.val("editForm", {
                    "itemId": data.itemId,
                    "editClaSelect": data.classId,
                    "itemName": data.itemName,
                    "price": data.price,
                    "description": data.description,
                    "remark": data.remark,
                });
                form.on('submit(edit)', function (data) {
                    var itemInfo = data.field;
                    $.ajax({
                        url: "/item/update.action",
                        type: "POST",
                        data: itemInfo,
                        dataType: "json",
                        success: function (data) {
                            if (data.success) {
                                //关闭弹框
                                // layer.close(index);
                                // //同步更新表格和缓存对应的值
                                // obj.update({
                                //     uv: value
                                // });
                                layer.msg("修改成功", {icon: 6});
                            } else {
                                layer.msg("修改失败", {icon: 5});
                            }
                        }

                    });
                });
            }
        });


        /* 添加商品 */
        $(".addItemBtn").on('click', function () {

            /* 再弹出添加界面 */
            layer.open({
                type: 1,
                title: "添加商品",
                area: ["40%"],
                content: $("#addItemModal"),
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
            <!--添加表单提交-->
            form.on('submit(add)', function (data) {
                var itemInfo = data.field;
                // console.log(itemInfo);
                // console.log(typeof itemInfo);
                $.ajax({
                    url: "/item/save.action",
                    type: "post",
                    dataType: "json",
                    data: itemInfo,
                    success: function (result) {
                        // console.log(result.msg);
                        if (result.success) {
                            layer.msg('商品添加成功', {
                                icon: 1,
                                time: 1000,
                                end: function () {
                                    layer.closeAll();
                                }
                            });
                        } else {
                            layer.msg('商品添加失败！', {
                                icon: 1,
                                time: 1000,
                                end: function () {
                                    layer.closeAll();
                                }
                            });
                        }
                    }
                });

            });
        });

    });
</script>

</body>
</html>
