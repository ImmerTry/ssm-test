/**
 * 分页显示加载商品js
 */

$(function () {
    queryPage();
});

function queryPage() {
    $.ajax({
        url: "/item/getPage.action",
        dataType: 'json',
        data:{
            "pageNum":$("[name=pageNum]").val(),
            "pageSize":$("[name=pageSize]").val()
        },
        type: 'post',
        success: showPage
    });
}

function showPage(pageInfo) {

    var total = pageInfo.total;//页总数
    var pageNum = pageInfo.pageNum;//页号
    var pageSize = pageInfo.pageSize;//页大小

    var itemList = pageInfo.list;//获取当前list信息
    $("#itemList").html("");//清空表格中数据并重新填充数据

    for (var i = 0; i < itemList.length; i++) {
        // var index = (pageNum - 1) * pageSize + i + 1;
        var tr = "<tr><td>" + '<input type="checkbox">' + "</td>"
            + '<td>' + itemList[i].itemid + '</td>'
            + '<td>' + itemList[i].itemname + '</td>'
            + '<td>' + itemList[i].price + '</td>'
            + '<td>' + itemList[i].classid + '</td>'
            + '<td>' + itemList[i].description + '</td>'
            + '<td>' + itemList[i].remark + '</td>'
            + '<td>'
            +'<a title="编辑" onclick="editCla(this)" data-toggle="modal" data-target="#editModal">\n' +
            '                                <i class="Hui-iconfont">&#xe60c;</i> </a>'
            +'<a title="删除" onclick="deleteCla(this)"><i class="Hui-iconfont">&#xe6e2;</i></a>'
            + '</td></tr>';
        $("#itemList").append(tr)

    }
    layui.use(['laypage', 'layer'], function () {
        var laypage = layui.laypage, layer = layui.layer;

        //执行一个laypage实例
        laypage.render({
            elem: 'itemPage',  //要显示的div
            count: total,    //数据总数，从服务端得到
            limit: pageSize,//每页显示的条数。laypage将会借助 count 和 limit 计算出分页数。
            curr: pageNum,  //当前页号
            skip:true,
            limits: [10, 20, 30, 40, 50],//下拉框里显示的option
            layout: ['count', 'prev', 'page', 'next', 'limit', 'skip'], //显示哪些分页组件
            jump: function (obj, first) { //点击页号的时候执行的函数
                console.log(obj);
                $("[name='pageNum']").val(obj.curr);//向隐藏域设置当前页的值
                $("[name='pageSize']").val(obj.limit);//向隐藏域设置当前页的大小
                if (!first) {//首次不执行(点击的时候才执行)
                    queryPage();
                }
            }
        });
    });

}


