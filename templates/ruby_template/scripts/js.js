
jQuery.noConflict();
jQuery(document).ready(function($){


        //portfolioFunction
        var i = $("#portfolio-tabs"),
            t = $("#portfolio-body");
        $(".portfolio-tabs__item:first").addClass("active"), i.owlCarousel({
            nav: !0,
            navText: ['<i class="icon-arrow-left"></i>', '<i class="icon-arrow-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                576: {
                    items: 2
                },
                768: {
                    items: 3
                },
                992: {
                    items: 4
                },
                1200: {
                    nav: !1,
                    autoWidth: !0,
                    items: 8
                }
            }
        }), t.owlCarousel({
            items: 1
        });
        var e = $(".portfolio-tabs__item");
        if (e.on("click", function() {
            e.each(function() {
                $(this).removeClass("active")
            }), $(this).addClass("active");
            var i = $(this).attr("data-tab");
            t.trigger("to.owl.carousel", [i, 500, !0])
        }), t.on("changed.owl.carousel", function(t) {
            var e = t.item.index;
            $(".portfolio-tabs__item").removeClass("active"), $("[data-tab = " + e + "]").addClass("active"), i.trigger("to.owl.carousel", [e, 500, !0])
        }), $(window).innerWidth() < 577) {
            var a = i.find(".owl-next"),
                s = i.find(".owl-prev");
            a.on("click", function() {
                t.trigger("next.owl.carousel", [300])
            }), s.on("click", function() {
                t.trigger("prev.owl.carousel", [300])
            })
        }
        // end //portfolioFunction


        _init = {
            init: function () {
                 _init.requestSlide()
            },
            requestSlide: function () {
                var i = $(".js-open-contact-form"),
                    t = $("#contact-form"),
                    e = $("#request-close");

                e.on("click", function() {
                    t.slideToggle(), i.toggleClass("active");
                });
            },
        }

        $(document).ready(_init.init);


});