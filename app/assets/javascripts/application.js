// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.easing
//= require moment
//= require fullcalendar
//= require_tree .


$(document).ready( function() {

    $('div.alert').delay(1000).slideUp(300);

    $('div.slide').innerWidth($(window).width());

    var toggle = 0;
    $('a#menu').click( function() {
        if(toggle == 0){
            $('div#sidebar').stop().animate( {
                right: '20%'
            }, 300, 'easeOutBack');
            toggle = 1;
        }
        else if(toggle == 1){
            $('div#sidebar').stop().animate( {
                right: '100%'
            }, 300, 'easeOutBack');
            toggle = 0;
        }
    });


    $('a.next').click( function() {
        var w = $(window).width();
        $(window).scrollTop(0, 200);
        $('div.slide-container').stop().animate( {
            right: "+=" + w
        }, 300, 'easeOutBack');
        $('a.add-buddy-button').fadeOut(200);
        $('div.over').fadeIn(100);
    });
    $('a.prev').click( function() {
        var w = $(window).width();
        $(window).scrollTop(0, 200);
        $('div.slide-container').stop().animate( {
            right: "-=" + w
        }, 300, 'easeOutBack');
        $('a.add-buddy-button').fadeIn(200);
        $('div.over').fadeOut(100);
    });


    $('a.activity-button').click( function() {
        var target = 'div.activity-info#' + $(this).attr('id');
        $("div.activity-info:visible").stop().slideUp(200);
        $(target).stop().slideToggle(200);
    });

    $('a.add-buddy-button').click( function() {
        var target = 'div.activity-info#' + $(this).attr('id');
        $("div.activity-info:visible").stop().slideUp(200);
        $(target).stop().slideToggle(200);
    });


});