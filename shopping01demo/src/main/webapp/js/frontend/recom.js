const PAGESIZE = 4 // 新书推荐一页推荐多少书籍
var bookType = null // 当前选择书籍类型

$(document).ready(function () {
    // 获取图书种类
    getType();
})

/**
 * 获取推荐图书类型列表
 */
function getType() {
    var typeUrl = '/frontend/gettype.do';
    $.getJSON(typeUrl, function (data) {
        if (data.success) {
            // 加载图书类别
            var typeList = data.typeList;
            swiperHtml = ' <a href="#" id="defaultBook" class="list-group-item active" style="background-color:#3c763d;" onclick="getTypeBooks(this)">图书分类</a>';
            typeList.map(function (item, index) {
                swiperHtml += '<a href="#" class="list-group-item" booktypeid="' + item.bookTypeID + '" onclick="getTypeBooks(this)">' + item.bookTypeName + '</a>\n';
            });
            $("#productTypeList").html(swiperHtml);

            // 休眠200ms，让id被更新上去
            setTimeout(function () {
                // 按图书编号降序 显示全部种类图书
                document.getElementById("defaultBook").click();
            }, 200);

        }

    });
}

function getTypeBooks(obj) {
    bookType = $(obj).text();
    // console.log(bookType);
    var typeBooksUrl = '/frontend/getbooksnumber.do';
    var data = {};
    data['bookTypeName'] = bookType;
    // console.log(data)
    $.ajax({
        type: 'GET',
        url: typeBooksUrl,
        data: data,
        success: function (msg) {
            if (msg.success) {
                // alert(msg.totalCount);
                changePagination(msg.totalCount == 0 ? 1 : msg.totalCount);
            }
        }
    })
}

function changePagination(total) {
    $("#pagination").jqPaginator({
        totalCounts: total,
        pageSize: PAGESIZE,
        visiblePages: 10,
        currentPage: 1,
        first: '<li class="first"><a href="javascript:void(0);">首页<\/a><\/li>',
        prev: '<li class="prev"><a href="javascript:void(0);">前一页<\/a><\/li>',
        next: '<li class="next"><a href="javascript:void(0);">后一页<\/a><\/li>',
        last: '<li class="last"><a href="javascript:void(0);">尾页<\/a><\/li>',
        page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>',
        onPageChange: function (pageIndex) {
            pageIndex = (pageIndex == null ? 1 : pageIndex);
            $("#pagination-text").html(pageIndex);

            var typeBooksUrl = '';
            if (bookType == "图书分类") {
                typeBooksUrl = "/frontend/newbook.do";
            } else {
                typeBooksUrl = "/frontend/gettypebooks.do"
            }
            // console.log(typeBooksUrl);
            changeContest(typeBooksUrl, {"bookTypeName": bookType, "pageIndex": pageIndex, "pageSize": PAGESIZE});
        }
    });
}

function changeContest(url, json) {
    // console.log(json);
    $.getJSON(url, json, function (data) {
        if (data.success) {
            var list = data.bookList;
            console.log(json);
            var swiperHtml = '';
            list.map(function (item, index) {
                swiperHtml += '<li class="row recom-1"\n' +
                    '                    style="margin-top:5px;margin-bottom:5px;display:block;height:242px;background-color:#f8f8f8">\n' +
                    '                    <div class="col-md-3" style="line-height:242px;">\n' +
                    '                        <a href="' + item.bookImage + ' " target="_blank" alt="点击看大图" class="img-thumbnail"><img\n' +
                    '                                src="' + item.bookImage + '" class="imgBook"/></a>\n' +
                    '                    </div>\n' +
                    '                    <div class="col-md-9" style="">\n' +
                    '                        <div class="row">\n' +
                    '                            <ul>\n' +
                    '                                <li><span style="font-weight:bold;font-size:14px;line-height:24px;">' + item.bookName + '</span></li>\n' +
                    '                                <li><span class="search_now_price">¥' + item.discount + '</span><span\n' +
                    '                                        class="search_pre_price">¥' + item.price + '</span></li>\n' +
                    '\n' +
                    '                                <li><span style="color:blue"></span><span style="color:blue">' + item.publishDomain.publishingName + '</span>\n' +
                    '                                    <span style="color:blue">/2009年11月</span></li>\n' +
                    '                                <li>ISBN：<span style="color:blue">' + item.bookIsbn + '</span></li>\n' +
                    '                                <li>所属分类：<span style="color:blue">' + item.productTypeDomain.bookTypeName + '</span></li>\n' +
                    '                                <li><p style="height:60px;overflow:hidden">' + item.bookIntroduction + '</p>\n' +
                    '                                </li>\n' +
                    '                            </ul>\n' +
                    '                        </div>\n' +
                    '                        <div class="row" style="">\n' +
                    '                            <button type="button" class="btn btn-primary">收藏</button>\n' +
                    '                            <button type="button" class="btn btn-success">加入购物车</button>\n' +
                    '                            <button type="button" class="btn btn-danger">一键购买</button>\n' +
                    '                        </div>\n' +
                    '                    </div>\n' +
                    '                </li>'
            })
            // console.log(swiperHtml);
            $("#content-left").html(swiperHtml);
        }
    })
}