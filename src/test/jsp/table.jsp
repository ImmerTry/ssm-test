<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/7/27
  Time: 下午4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户登录</title>
    <link rel="stylesheet" href="statics/layui/css/layui.css">
    <style>
    </style>
</head>
<body>
<div class="layui-form news_list">
    <table class="layui-table" id="table">

        <thead>
        <tr>
            <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"/></th>
            <th style="text-align:left;">公告标题（点击查看）</th>
            <th>发布人</th>
            <th>发送部门</th>
            <th>发送时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr th:each="noticeVo:${noticeVos}">
            <td class="news_content"><input type="checkbox" name="noiddel" lay-skin="primary" lay-filter="itemChoose" th:value="${noticeVo.noId}"/></td>
            <td style="text-align:left;"><a th:text="${noticeVo.noTitle}" th:onclick="'javascript:noticeInfo('+ ${noticeVo.noId} + ')'" href="javascript:;"></a></td>
            <td th:text="${noticeVo.empName}"></td>
            <td th:text="${noticeVo.deName}"></td>
            <td th:text="${noticeVo.dataString}"></td>
            <td><a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del" th:onclick="'javascript:nodel(this,'+ ${noticeVo.noId} + ')'" href="javascript:;"><i class="layui-icon"></i>删除</a></td>
        </tr>
        </tbody>
    </table>
</div>
<script src="statics/js/jquery-3.3.1.min.js"></script>
<script src="statics/layui/layui.js"></script>
<script>
    layui.use(['layer', 'jquery', 'table', 'form'], function () {
        $ = layui.jquery;
        var form = layui.form;
        var laypage = layui.laypage;
        var layer = layui.layer;

        form.on('checkbox(allChoose)', function (data) {
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
        $('.batchDel').click(function () {
            var noList = new Array();
            $("input:checkbox[name='noiddel']:checked").each(function () {
                noList.push($(this).val());
            });

            if (noList.length == 0) {
                layer.open({
                    title: '提示',
                    content: '请选择删除信息'
                });
                return false;
            }
            layer.confirm('确定要全部删除吗？', {
                time: 20000, //20s后自动关闭
                btn: ['确定', '取消'],
                yes: function (index) {
                    layer.close(index);

                    $.ajax({
                        type: 'POST',
                        url: '/notice/noticeDeleteAll',
                        data: {'noList': noList},
                        dataType: 'json',
                        success: function (data) {
                            if (data.state == "1") {
                                layer.msg('已删除!', {
                                    icon: 1, time: 1000, end: function () {
                                        window.location.reload();
                                    }
                                });
                            } else {
                                layer.msg('删除失败', {
                                    icon: 1, time: 1000, end: function () {
                                        window.location.reload();
                                    }
                                });
                            }
                        }
                    });
                }
            });

        });
        // $(function () {
        //     var url = "/item/getPage.action";
        //     initData(url, laypage);
        //     /* 渲染表单 */
        //     form.render();
        // });

        function initData(url, laypage) {
            $.get(url, function (pageInfo) {
                var itemList = pageInfo.list;
                var itemTr;

                <!--填充表格数据-->
                $("#table tbody").html("");
                $.each(itemList, function (index, item) {
                    itemTr = $("<tr>"
                        + '<td>' + '<input type="checkbox" name="checked" lay-skin="primary" value="' + item.itemId + '">' + '</td>'
                        + '<td>' + item.itemId + '</td>'
                        + '<td>' + item.itemName + '</td>'
                        + '<td>' + item.price + '</td>'
                        + '<td>' + item.classId + '</td>'
                        + '<td>' + item.description + '</td>'
                        + '<td>' + item.remark + '</td>'
                        + "<td>"
                        + "<button class='layui-btn layui-btn-xs layui-btn-normal'><i class='layui-icon'>&#xe642;</i>编辑</button>"
                        + "<button class='layui-btn layui-btn-small layui-btn-danger'><i class='layui-icon'>&#xe640;</i>删除</button>"
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
    });

</script>
</body>
</html>
