/**
 * 后台左侧下拉封装js
 */

!function (a) {
    a.fn.Huifold = function (b) {
        var c = {
            titCell: ".item .Huifold-header",
            mainCell: ".item .Huifold-body",
            type: 1,
            trigger: "click",
            className: "selected",
            speed: "first"
        };
        var b = a.extend(c, b);
        this.each(function () {
            var d = a(this);
            d.find(b.titCell).on(b.trigger, function () {
                if (a(this).next().is(":visible")) {
                    if (b.type == 2) {
                        return false
                    } else {
                        a(this).next().slideUp(b.speed).end().removeClass(b.className);
                        if (a(this).find("b")) {
                            a(this).find("b").html("+")
                        }
                    }
                } else {
                    if (b.type == 3) {
                        a(this).next().slideDown(b.speed).end().addClass(b.className);
                        if (a(this).find("b")) {
                            a(this).find("b").html("-")
                        }
                    } else {
                        d.find(b.mainCell).slideUp(b.speed);
                        d.find(b.titCell).removeClass(b.className);
                        if (d.find(b.titCell).find("b")) {
                            d.find(b.titCell).find("b").html("+")
                        }
                        a(this).next().slideDown(b.speed).end().addClass(b.className);
                        if (a(this).find("b")) {
                            a(this).find("b").html("-")
                        }
                    }
                }
            })
        })
    }
}(window.jQuery);
