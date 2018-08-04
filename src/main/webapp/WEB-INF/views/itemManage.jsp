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
    <link rel="stylesheet" href="../../statics/css/bootstrap.css">
</head>
<body>
<div class="layui-container">

    <!-- 顶部列 -->
    <div class="layui-row" style="margin-top: 20px;">
        <div class="layui-col-md12">
            <button class="layui-btn layui-btn-normal addItemBtn">
                <i class="layui-icon">&#xe654;</i>添加
            </button>
            <button class="layui-btn layui-btn-danger batchDel">
                <i class="layui-icon">&#x1006;</i>删除
            </button>
        </div>
    </div>
    <!-- 表格列 -->
    <div class="layui-row">
        <div class="layui-col-md12">
            <table class="layui-table" id="table" lay-filter="useruv">
            </table>
        </div>
    </div>
    <!-- 需要弹出的添加商品界面 -->
    <div class="layui-row" id="addItemModal" style="display: none;">
        <div class="layui-col-md10">
            <form class="layui-form">
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
                        <select class="layui-input" name="classId" id="claSelect">
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
    <div class="layui-row" id="editItemModal" style="display: none;">
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
<script src="../../statics/js/bootstrap.js"></script>
<script src="../../statics/js/jquery.validate.min.js"></script>
<script src="../../statics/layui/layui.js"></script>
<script type="text/javascript">

    layui.use(["form", "table", "laypage", "layer"], function () {
        var form = layui.form;
        var laypage = layui.laypage;
        var layer = layui.layer;
        var table = layui.table;

        table.render({
            elem: '#table'
            // , skin: 'line ' //行边框风格
            // , even: true //开启隔行背景
             , size: 'lg' //小尺寸的表格
            // ,height: 600
            ,width:1000
            , url: '/item/show.action' //数据接口
            , page: true //开启分页
            , limit: 10
            , limits: [10, 20, 30]
            , cols: [[ //表头
                {checkbox: true, fixed: true}
                , {field: 'itemId', title: '商品ID', width: 125, sort: true, fixed: true}
                , {field: 'itemName', title: '名称', width: 125}
                , {field: 'price', title: '价格', width: 125, sort: true}
                , {field: 'classId', title: '分类ID', width: 125}
                , {field: 'remark', title: '商品说明', width: 125}
                , {field: 'description', title: '商品简介', width: 126}
                , {title: '操作', templet: '#itemTpl', width: 186}
            ]]
        });

        table.on('checkbox(useruv)', function (obj) {
            console.log(obj)
        });
        table.on('tool(useruv)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if (layEvent === 'detail') { //查看
                //do somehing
            } else if (layEvent === 'del') { //删除
                layer.confirm('真的删除行么', function (index) {
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

                layer.open({
                    type: 1,
                    title: "编辑商品",
                    area: ["40%"],
                    content: $("#editItemModal").html()
                });

                $.ajax({
                    url: "/item/selectItem.action",
                    type: "POST",
                    data: {"itemId": data.itemId},
                    dataType: "json",
                    success: function (data) {
                        var item = data.item;
                        form.val("editForm",{
                            "itemId":$("#itemId").val(item.itemId),
                            "editClaSelect":$("#editClaSelect").val(item.classId),
                            "itemName":$("#itemName").val(item.itemName),
                            "price":$("#price").val(item.price),
                            "description":$("#description").val(item.description),
                            "remark":$("#remark").val(item.remark),
                        })
                    }

                });


            }
        });


        /* 添加商品 */
        $(".addItemBtn").click(function () {

            /* 异步获取分类数据填充到分类ID Select */
            var url = "/cla/show.action";
            $.get(url, function (data) {
                var claNames;
                var data = data.claLists;
                var claSelect = $("#claSelect");
                // console.log(typeof data);
                $.each(data, function (index, item) {
                    claNames = item.className;
                    // console.log(claNames);
                    var claOption = $("<option value='" + item.classId + "'>" + item.className + "</option>");
                    claSelect.append(claOption);
                });

                /* 再弹出添加界面 */
                layer.open({
                    type: 1,
                    title: "添加商品",
                    skin: "myclass",
                    area: ["40%"],
                    content: $("#addItemModal").html()
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
                                    icon: 1, time: 1000, end: function () {
                                        window.location.reload();
                                    }
                                });
                            } else {
                                layer.msg('商品添加失败！', {
                                    icon: 1, time: 1000, end: function () {
                                        window.location.reload();
                                    }
                                });
                            }
                        }
                    });

                });
                form.render();
            });

        });


        <!--批量删除-->
        $(".batchDel").click(function () {
            var $checkbox = $('#table tbody input[type="checkbox"][name="checked"]');
            // console.log($checkbox);
            if ($checkbox.is(":checked")) {
                layer.confirm('确定删除选中的信息？', {
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
                        // var length = $('input:checkbox[name="checked"]:checked').length;
                        // console.log(length);
                        $('input:checkbox[name="checked"]:checked').each(function () {
                            $.post("/item/delete.action", {
                                "itemId": $(this).val(),
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
                        });
                        form.render();
                        layer.close(index);
                    }, 2000);
                })
            } else {
                layer.msg("请选择需要删除的商品");
            }
        });

    });

</script>
<%--<script src="../../statics/js/itempage.js"></script>--%>

</body>
</html>
