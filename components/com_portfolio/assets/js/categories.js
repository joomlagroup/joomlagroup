

function nextClick(id) {
    var next = id + 1;
    $('.tab' + next).addClass('active');
    $('.tab-content .tab-' + next).addClass('active');
    $('.tab' + id).removeClass('active');
    $('.tab-content .tab-' + id).removeClass('active');
}

function prevClick(id) {
    var prev = id - 1;
    $('.tab' + prev).addClass('active');
    $('.tab-content .tab-' + prev).addClass('active');
    $('.tab' + id).removeClass('active');
    $('.tab-content .tab-' + id).removeClass('active');
}

function toggleIcon(e) {
    $(e.target).prev('.panel-heading').find(".more-less").toggleClass('glyphicon-plus glyphicon-minus');
}

jQuery('.panel-group').on('hidden.bs.collapse', toggleIcon);
jQuery('.panel-group').on('shown.bs.collapse', toggleIcon);
jQuery('ul.nav.nav-tabs  a').click(function (e) {
    e.preventDefault();
    jQuery(this).tab('show');
});

jQuery.noConflict();

jQuery(document).ready(function($){
    var owl = $("#owl-demo");
    owl.owlCarousel({
        items: 1,
        slideSpeed: 1000,
        autoPlay: false,
        paginationSpeed: 300,
        itemsDesktop: [1000, 1],
        itemsDesktopSmall: [900, 1],
        itemsTablet: [600, 1],
        itemsMobile: false
    });
    $(".next").click(function () {
        owl.trigger('owl.next');
    })
    $(".prev").click(function () {
        owl.trigger('owl.prev');
    })
    $(".play").click(function () {
        owl.trigger('owl.play', 1000);
    })
    $(".stop").click(function () {
        owl.trigger('owl.stop');
    })
});


jQuery(document).ready(function($){
    var owl = $(".owl-carousel");
    owl.owlCarousel({
        items: 1,
        responsiveClass: true,
        responsive: {0: {items: 1,}, 480: {items: 1,}, 991: {items: 1,}, 1200: {items: 1,}},
        navigation: false,
        autoplay: true,
        autoHover: false,
        autoplayTimeout: 5000,
        autoplayHoverPause: false,
        loop: true,
        nav: true,
        navigationText: ["<i class='fa fa-caret-left'></i>", "<i class='fa fa-caret-left'></i>"],
    });
});
jQuery(document).ready(function($){
    $('.responsiveCustomAccord > .rsAcordianTab').on('click', function (e) {
        $(this).closest('.rsAcordianTab').addClass('active').siblings('.rsAcordianTab').removeClass('active');
    });
});
jQuery(document).ready(function($){
    $('.bxslider').bxSlider({mode: 'fade', adaptiveHeight: true, autoHover: true, captions: false});
    $('.autoSlideTab > li').on('click', function () {
        $('li').removeClass('active');
        $(this).addClass('active');
    });
});
jQuery(document).ready(function($){
    $(this).removeClass("autoSlideTab");
}, function () {
    $(this).addClass("autoSlideTab");
});
jQuery(document).ready(function($){
    $(function () {
        var tabCarousel = setInterval(function () {
            var tabs = $('.autoSlideTab > li'), active = tabs.filter('.active'), next = active.next('li'),
                toClick = next.length ? next.find('a') : tabs.eq(0).find('a');
            toClick.trigger('click');
        }, 3000);
    });
});