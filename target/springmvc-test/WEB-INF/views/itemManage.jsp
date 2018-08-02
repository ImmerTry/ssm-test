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
    <style>
        body .myclass .layui-layer-content {
            padding: 20px;
        }

        .itemCheck {
            width: 18px;
            height: 18px;
        }
    </style>
</head>
<body>
<div class="layui-container">

    <!-- 顶部列 -->
    <div class="layui-row" style="margin-top: 20px;">
        <div class="layui-col-md12">
            <button id="addItemBtn" class="layui-btn layui-btn-normal">
                <i class="layui-icon">&#xe654;</i>添加
            </button>
            <button class="layui-btn layui-btn-danger" id="batchDel">
                <i class="layui-icon">&#x1006;</i>删除
            </button>
        </div>
    </div>
    <!-- 表格列 -->
    <div class="layui-row">
        <div class="layui-col-md12">
            <div class="layui-form">
                <table class="layui-table" id="table">
                    <thead>
                    <tr>
                        <th><input type="checkbox" lay-skin="primary" lay-filter="allChoose" id="allChoose"/></th>
                        <th>ID</th>
                        <th>名称</th>
                        <th>价格</th>
                        <th>分类</th>
                        <th>说明</th>
                        <th>简介</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- 分页列 -->
    <div class="layui-row">
        <div class="layui-col-md12">
            <div id="paging" style="float: right;"></div>
        </div>
    </div>
    <!-- 需要弹出的添加商品界面 -->
    <div class="layui-row" id="addItemModal" style="display: none;">
        <div class="layui-col-md10">
            <form class="layui-form" id="addItem">
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
                        <select class="layui-input" name="classId" id="claSelect">
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品说明：</label>
                    <div class="layui-input-block">
                        <input type="text" id="itemRemark" name="remark" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品简介：</label>
                    <div class="layui-input-block">
                        <input type="text" id="itemDesc" name="description" class="layui-input">
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
</div>
</body>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/js/bootstrap.js"></script>
<script src="../../statics/js/jquery.validate.min.js"></script>
<script src="../../statics/layui/layui.js"></script>
<script type="text/javascript">

    layui.use(["form", "laypage", "layer"], function () {
        var form = layui.form;
        var laypage = layui.laypage;
        var layer = layui.layer;

        <!--填充数据分页-->
        $(function () {
            var url = "/item/getPage.action";
            initData(url, laypage);

            /* 点击添加按钮提出添加商品界面 */
            $("#addItemBtn").click(function () {

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

                    /* 渲染表单 */
                    form.render();

                });

            });

        });

        function initData(url, laypage) {
            $.get(url, function (pageInfo) {
                var itemList = pageInfo.list;
                var itemTr;

                <!--填充表格数据-->
                $("#table tbody").html("");
                $.each(itemList, function (index, item) {
                    itemTr = $("<tr>"
                        + '<td class="itemCheck">' + '<input type="checkbox" name="checked" value="' + item.itemId + '"'
                        + ' lay-skin="primary" lay-filter="itemChoose">' + '</td>'
                        + '<td>' + item.itemId + '</td>'
                        + '<td>' + item.itemName + '</td>'
                        + '<td>' + item.price + '</td>'
                        + '<td>' + item.classId + '</td>'
                        + '<td>' + item.description + '</td>'
                        + '<td>' + item.remark + '</td>'
                        + "<td>"
                        + "<button class='layui-btn layui-btn-xs layui-btn-normal'><i class='layui-icon'>&#xe642;</i>编辑</button>"
                        + "<button class='layui-btn layui-btn-xs layui-btn-danger'><i class='layui-icon'>&#xe640;</i>删除</button>"
                        + "</td>"
                        + "</tr>");
                    itemTr.appendTo("#table tbody");
                });

                <!--填充分页数据-->
                laypage.render({
                    elem: 'paging'
                    , curr: pageInfo.pageNum
                    , count: pageInfo.total
                    , limit: pageInfo.pageSize
                    , limits: [5, 10, 20]
                    , layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
                    , jump: function (obj, first) {
                        if (!first) {
                            var url = "/item/getPage.action?pageNum=" + obj.curr + "&pageSize=" + obj.limit;
                            initData(url, laypage);
                        }
                    }
                });
            });
        }

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
                    alert(1);
                    // console.log(data.msg);
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
        form.on('checkbox(allChoose)', function (data) {
            console.log(data);
            var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
            child.each(function (index, item) {
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
        });
        form.on('checkbox(itemChoose)', function (data) {
            var sib = $(data.elem).parents('table').find('tbody input[type="checkbox"]:checked').length;
            var total = $(data.elem).parents('table').find('tbody input[type="checkbox"]').length;
            if (sib == total) {
                $(data.elem).parents('table').find('thead input[type="checkbox"]').prop("checked", true);
                form.render();
            } else {
                $(data.elem).parents('table').find('thead input[type="checkbox"]').prop("checked", false);
                form.render();
            }
        });


        <!--批量删除-->
        $("#batchDel").click(function () {
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
        })
    });

</script>
<%--<script src="../../statics/js/itempage.js"></script>--%>

</body>
</html>
