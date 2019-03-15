// Back to top

jQuery(function ($) {
            
            // Animate the scroll to top
            $('.go-top').click(function(event) {
                event.preventDefault();
                
                $('html, body').animate({scrollTop: 0}, 300);
            })
        });
jQuery(function ($) {
$(window).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll >= 50) {
        $(".site-header").addClass("opacityheader");
    } else {
        $(".site-header").removeClass("opacityheader");
    }
});
});


/*
  * Replace all SVG images with inline SVG
  */
jQuery(function ($) {
$('img.svg').each(function() {
         var $img = $(this);
         var imgID = $img.attr('id');
         var imgClass = $img.attr('class');
         var imgURL = $img.attr('src');
$.get(imgURL, function(data) {
             // Get the SVG tag, ignore the rest
             var $svg = $(data).find('svg');
// Add replaced image's ID to the new SVG
             if (typeof imgID !== 'undefined') {
                 $svg = $svg.attr('id', imgID);
             }
             // Add replaced image's classes to the new SVG
             if (typeof imgClass !== 'undefined') {
                 $svg = $svg.attr('class', imgClass + ' replaced-svg');
             }
// Remove any invalid XML tags as per http://validator.w3.org
             $svg = $svg.removeAttr('xmlns:a');
// Replace image with new SVG
             $img.replaceWith($svg);
}, 'xml');
});
})

// fade in our work

jQuery(function ($) {
    var time = 0;
    $('.grid').each(function() {
        $(this).delay(time).fadeIn(1000);
        time += 500;
    });
});