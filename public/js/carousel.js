$(function(){
    var $slides = $('#slides'), $content = $('#content'), $slide = $('.slide'), $thumbs = $('.thumbs a'), index = 0;
    $('.slide').css('display', 'block');
    $('#pagination').css('zindex', 100);
    $thumbs.eq(0).css({'border':'solid 5px #e4d011'});
    
    $('.prev a').bind('click', function(e){
        e.preventDefault();
        index = index == 0 ? 5 : index - 1;
        var newpos = index * -$slide.height();
        $slides.animate({'margin-top':newpos+'px'}, 400);
        $thumbs.css({'border':'solid 5px #fff'}).eq(index).css({'border':'solid 5px #e4d011'});
    });
    
    $('.next a').bind('click', function(e){
        e.preventDefault();
        index = index == 5 ? 0 : index + 1;
        var newpos = index * -$slide.height();
        $slides.animate({'margin-top':newpos+'px'}, 400);
        $thumbs.css({'border':'solid 5px #fff'}).eq(index).css({'border':'solid 5px #e4d011'});
    });
    
    $thumbs.bind('click', function(e){
        e.preventDefault();
        index = $thumbs.index(this);
        var newpos = index * -$slide.height();
        $slides.animate({'margin-top':newpos+'px'},400);
        $thumbs.css({'border':'solid 5px #fff'}).eq(index).css({'border':'solid 5px #e4d011'});
    });
    
    function setContentSize(){
        $content.css({
            'overflow':'hidden',
            'width':$slide.width()+'px',
            'height':$slide.height()+'px'
        });
    }
    
    setContentSize();
    $(window).resize(setContentSize);
});