<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/7/9
  Time: 上午11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>产品管理</title>
    <link rel="stylesheet" href="../../statics/css/iconfont.css">
    <link rel="stylesheet" href="../../statics/css/bootstrap.css">
    <link rel="stylesheet" href="../../statics/layui/css/layui.css">
    <style>
        table {
            font-size: 14px;
        }

        i {
            position: relative;
            float: right;
            color: #333333;
            font-style: normal;
            font-size: 14px;
        }

        i:hover {
            cursor: pointer;
            color: #e4393c;
        }

        tbody tr td a {
            position: relative;
            float: left;
            padding: 0 10px;
        }

        span {
            color: #333333;
        }

        .layui-input, .layui-laypage-btn {
            color: #333333;
        }
    </style>
</head>
<body>
<div class="container">
    <%--隐藏当前页和页号--%>
    <input type="hidden" name="pageNum">
    <input type="hidden" name="pageSize">
    <table id="mytable" class="table table-bordered table-hover">
        <caption>分类管理
            <i class="Hui-iconfont" data-toggle="modal" data-target="#myModal">&#xe610;添加分类</i></caption>
        <thead>
        <tr>
            <th>
                <input type="checkbox">
            </th>
            <th>分类ID</th>
            <th>分类名称</th>
            <th>关键词</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="claList">
        </tbody>
    </table>
    <div id="claPage">
    </div>
</div>
<%--添加--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="">
                    添加分类
                </h4>
            </div>
            <form class="form-horizontal" id="addClaModal" role="form">
                <div class="modal-body">

                    <div class="form-group">
                        <label for="claId" class="col-sm-3 control-label">分类ID</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="claId" name="claId" value=""
                                   placeholder="分类ID">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="claName" class="col-sm-3 control-label">分类名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="claName" value="" id="claName"
                                   placeholder="分类名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="keyword" class="col-sm-3 control-label">关键词</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="keyword" value="" id="keyword"
                                   placeholder="关键词">
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" id="btnOk" class="btn btn-primary">
                        添加
                    </button>
                    <span id="tip"> </span>
                </div>

            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->

</div>
<%--编辑--%>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title">
                    修改分类
                </h4>
            </div>
            <form class="form-horizontal" id="editClaModal" role="form">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="claId" class="col-sm-3 control-label">分类ID</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="claId" id="editClaId" disabled>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="claName" class="col-sm-3 control-label">分类名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="claName" id="editClaName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="keyword" class="col-sm-3 control-label">关键词</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="keyword" id="editKeyword">
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" id="btnEdit" class="btn btn-primary">
                        修改
                    </button>
                    <%--<span id="tip"> </span>--%>
                </div>

            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->

</div>

<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/layui/layui.js"></script>
<script src="../../statics/js/clapage.js"></script>
<script src="../../statics/js/jquery.validate.min.js"></script>
<script>
    $(function () {
        /**
         * Jquery validate插件自验证
         */
        $("#addClaModal").validate({
            onsumbit: true,
            onfocusout: false,
            onkeyup: false,

            rules: {
                claId: {
                    required: true
                },

                claName: {
                    required: true
                },

                keyword: {
                    required: true
                }
            },
            messages: {
                claId: {
                    required: "请输入分类ID"
                },

                claName: {
                    required: "请输入分类名称"
                },

                keyword: {
                    required: "请输入关键词"
                }
            },
            submitHandler: function (form) { //通过之后回调

                $("#myModal").modal('hide');
                //进行ajax传值
                $.ajax({
                    url: "/cla/save.action",
                    type: "post",
                    dataType: "json",
                    data: {
                        classId: $.trim($("#claId").val()),
                        className: $.trim($("#claName").val()),
                        viewKeyword: $.trim($("#keyword").val())
                    },
                    //   contentType: "application/json charset=utf-8",
                    success: function (data) {
                        console.log(data.msg);
                        alert("分类添加" + data.msg);
                        window.location.reload();
                    }
                });
            },
            invalidHandler: function (form, validator) {
                return false;
            }
        });

        /**
         * 实现复选框的全选/全不选
         */
        $("table thead th input:checkbox").on("click", function () {
            $(this).closest("table")
                .find("tr > td:first-child input:checkbox")
                .prop("checked", $("table thead th input:checkbox").prop("checked"))
        });

        /**
         * 编辑信息表单 验证提交
         */
        $("#editClaModal").validate({
            onsumbit: true,
            onfocusout: false,
            onkeyup: false,

            rules: {

                claName: {
                    required: true
                },

                keyword: {
                    required: true
                }
            },
            messages: {
                claName: {
                    required: "请输入分类名称"
                },

                keyword: {
                    required: "请输入关键词"
                }
            },
            submitHandler: function (form) { //通过之后回调

                $("#editModal").modal('hide');
                //进行ajax传值
                $.ajax({
                    url: "/cla/update.action",
                    type: "post",
                    dataType: "json",
                    data: {
                        classId: $.trim($("#editClaId").val()),
                        className: $.trim($("#editClaName").val()),
                        viewKeyword: $.trim($("#editKeyword").val())
                    },
                    //   contentType: "application/json charset=utf-8",
                    success: function (data) {
                        console.log(data.msg);
                        alert("分类" + data.msg);
                        window.location.reload();
                    }
                });
            },
            invalidHandler: function (form, validator) {
                return false;
            }

        });
        //validate插件模拟提交
        // $("#addClaModalBtn").click(function () {
        //     $("#addClaModal").submit();
        // })

        // $("#editModal").on('hidden.bs.modal', function (){
        //     $(this).removeData("bs.modal");
        // })

    });

    /**
     * 实现点击 编辑 显示信息页面
     * @param obj
     */
    function editCla(obj) {
        var rows = $(obj).parent().parent().find("td");
        var columns = rows.eq(1).text();
        $.ajax({
            type: "post",
            url: "/cla/edit.action",
            dataType: "json",
            data: {
                classId: columns
            },
            success: function (data) {

                console.log(data.msg);
                var cla = data.editCla;
                $("#editClaId").val(cla.classId);
                $("#editClaName").val(cla.className);
                $("#editKeyword").val(cla.viewKeyword);
            }
        });
    }

    /**
     * 实现点击 删除 显示信息页面
     * @param obj
     */
    function deleteCla(obj) {
        var rows = $(obj).parent().parent().find("td");
        var columns = rows.eq(1).text();
        if (confirm("你确定要删除本条记录吗？")) {

            $.ajax({
                type: "post",
                url: "/cla/delete.action",
                dataType: "json",
                data: {
                    classId: columns
                },
                success: function (data) {
                    console.log(data.msg);
                    window.location.reload();
                }
            })
        }


    }

</script>
<script src="../../statics/js/bootstrap.min.js"></script>
</body>
</html>
