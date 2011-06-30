$(function(){
    var $slides = $('#slides'), $content = $('#content'), $slide = $('.slide'), $thumbs = $('.thumbs a'), $pagination = $('#pagination a');index = 0;
    $('.slide').css('display', 'block');
    $thumbs.eq(0).css({'border':'solid 5px #e4d011'});
    
    $pagination.click(function(e){
        e.preventDefault();
        switch($pagination.index(this)){
            case 0:
                index = index == 0 ? $slide.length - 1 : index - 1;
                break;
            case 1:
                index = index == $slide.length -1 ? 0 : index + 1;
                break;
        }
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