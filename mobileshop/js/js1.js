// JavaScript Document
<!-- it works the same with all jquery version from 1.x to 2.x -->
<script src="jquery.min.js"></script>
<script src="jssor.slider.mini.js"></script>
<script>
    jQuery(document).ready(function ($) {
        //Define an array of slideshow transition code
        var _SlideshowTransitions = [
        { code1 },
        { code2 },
        { code3 }
        ];
        var options = {
            $AutoPlay: true,
            $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: _SlideshowTransitions,
                    $TransitionsOrder: 1,
                    $ShowLink: true
                }
        };
        var jssor_slider1 = new $JssorSlider$('slider1_container', options);
    });
</script>