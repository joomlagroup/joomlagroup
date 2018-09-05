
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

        //var header_height = $('header').height();
        //$('.conponent_site').css('margin-top',header_height+'px');

        $( "#form-contact" ).validate({
            rules: {
                'jform[contact_name]': {
                    required: true
                },
                'jform[contact_email]': {
                    required: true,
                    email: true
                },
                'jform[contact_message]': {
                    required: true
                }
            },
            messages: {
                'jform[contact_name]': {
                    required: "this field is required"
                },
                'jform[contact_email]': {
                    email: "Enter vaild Email",
                    required: "this field is required" // <-- removed underscore
                },
                'jform[contact_message]': {
                required: "this field is required"
                }
            },
            submitHandler: function (form) {
                form.submit();
            }
        });

        //for contact page
        var window_width = $( window ).width();
        if(window_width >= 1000){
            var right_contact = $('.right_contact').height();
            $('.left_contact').css('height',right_contact+'px');
        }



});