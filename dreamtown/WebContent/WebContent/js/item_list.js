jQuery.noConflict();
(function($){

$('ul#first a').imgPreview();
$('ul#second a').imgPreview({
    imgCSS: { width: 500 }
});
$('ul#third a').imgPreview({
    containerID: 'imgPreviewWithStyles',
    imgCSS: {
        height: 200
    },
    onShow: function(link){
        $(link).stop().animate({opacity:0.4});
        $('img', this).css({opacity:0});
    },
    onLoad: function(){
        $(this).animate({opacity:1}, 300);
    },
    onHide: function(link){
        $(link).stop().animate({opacity:1});
    }
});
$('ul#fourth a').imgPreview({
    containerID: 'imgPreviewWithStyles2',
    imgCSS: {
        height: 200
    },
    onShow: function(link){
        $('<span>' + $(link).text() + '</span>').appendTo(this);
    },
    onHide: function(link){
        $('span', this).remove();
    }
});
$('ul#fifth a').imgPreview({
    containerID: 'imgPreviewWithStyles3',
    srcAttr: 'rel',
    imgCSS: {
        height: 200
    },
    onShow: function(link){
        $('<span>' + link.href + '</span>').appendTo(this);
    },
    // When container hides:
    onHide: function(link){
        $('span', this).remove();
    }
});


})(jQuery);
