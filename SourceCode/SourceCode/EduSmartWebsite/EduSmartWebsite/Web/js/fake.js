////////////////////////////////////////
// fakeScroll - a custom scroll bar jQuery plugin
;(function($, win){
    "use strict";

    var pluginName = "fakeScroll",
        docElm = document.documentElement,
        $doc   = $(document),
        raf = win.requestAnimationFrame
           || win.webkitRequestAnimationFrame
           || win.mozRequestAnimationFrame
           || win.msRequestAnimationFrame
           || function(cb) { return win.setTimeout(cb, 1000 / 60); },

        defaults = {};

    jQuery.fn.fakeScroll = function(settings){
        return this.each(function(){

            var $el = $(this), // convert window to the HTML element
                fakeScroll;

            // if element already the pluging bound to it, return
            if( $el.data('_fakeScroll') )
                return;

            // wrap with needed DOM structure
            $el.wrapInner('<div class="scrollWrap"><div class="scrollContent"></div></div>');
            // create a new FakeScroll instance
            fakeScroll = new FakeScroll($el.find('.scrollContent'), settings || {});
            // bind the FakeScroll instance to the DOM component
            $el.data('_fakeScroll', fakeScroll);
        });
    }

    // Mouse drag handler
    function dragDealer($el, FS_context){
        var lastPageY;

        $el.on('mousedown.drag', function(e) {
            lastPageY = e.pageY;
            $el.addClass('grabbed');
            $doc.on('mousemove.drag', drag).mouseup(stop);
            return false;
        });

        function drag(e){
            var delta     = e.pageY - lastPageY;
                lastPageY = e.pageY;

            raf(function(){
                FS_context.el[0].scrollTop += delta / FS_context.scrollRatio;
            });
        }

        function stop() {
            $el.removeClass('grabbed');
            $doc.off("mousemove.drag mouseup.drag");
        }
    }

    // Constructor
    function FakeScroll($el, settings){
        this.el = $el;
        this.bar = $('<div class="fakeScrollBar">');

        dragDealer(this.bar, this);

        this.settings = $.extend({}, settings, defaults);
        this.callback = settings.callback ? settings.callback : null;
        this.maxScrollSoFar = 0;

        // insert the fake scroll bar into the container
        this.bar.appendTo(this.el.closest('.' + pluginName));
        // run "moveBar" once
        this.moveBar();

        this.el.on('scroll.fakeScroll', this.moveBar.bind(this) );
        $(win).on('resize.fakeScroll', this.moveBar.bind(this) );
    }

    FakeScroll.prototype = {
        destroy : function(){
            $el.off('scroll.fakeScroll mousedown.drag').removeData('_fakeScroll');
        },

        moveBar: function(e){
            var totalHeight = this.el[0].scrollHeight,
                ownHeight   = this.el[0].clientHeight,
                that        = this;

            this.scrollRatio = ownHeight / totalHeight;
            // update fake scrollbar location on the Y axis using requestAnimationFrame
            raf(function(){
                that.bar[0].style.cssText = 'height:' + (ownHeight / totalHeight) * 100 + '%; top:' + (that.el[0].scrollTop / totalHeight ) * 100 + '%';
            });
        }
    }

})(jQuery, window);