// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.isotope
//= require_tree .

// (function() {
//   $('.input-row #top_list, .input-row #post_tags_list').select2({tags:[]})
// });
    $(document).ready(function(){
    var $container = $('#container'),

        filters = {};

    $container.isotope({
      itemSelector: '.unit-level',
      // layoutMode: "fitRows",
      // resizable: false
      masonry: {
        columnWidth: 4
      }
    });

    // filter buttons
    $('.filter a').click(function(){
      var $this = $(this);
      // don't proceed if already selected
      if ( $this.hasClass('selected') ) {
        return;
      }
      
      var $optionSet = $this.parents('.option-set');
      // change selected class
      $optionSet.find('.selected').removeClass('selected');
      $this.addClass('selected');
      
      // store filter value in object
      // i.e. filters.color = 'red'
      var group = $optionSet.attr('data-filter-group');
      filters[ group ] = $this.attr('data-filter-value');
      // convert object into array
      var isoFilters = [];
      for ( var prop in filters ) {
        isoFilters.push( filters[ prop ] )
      }
      var selector = isoFilters.join('');
      $container.isotope({ filter: selector });

      return false;
    });

    $('#new-course-form').on("focus", function(){
        $('.new-unit-field').fadeIn(1000);
    });

    $('#new-resource-btn').on("click", function(){
        $('#resource-form-container').fadeIn(1000);
        $("#resource-show-container").fadeOut(1000);
    })

  });

// $(document).ready(function(){
//     var $container = $('.resourcesContainer');
//     $container.isotope({
//         layoutMode: 'fitRows',
//         filter: '*',
//         animationOptions: {
//             duration: 750,
//             easing: 'linear',
//             queue: false
//         }
//     });
 
//     $('.resourceFilter a').click(function(){
//         $('.resourceFilter .current').removeClass('current');
//         $(this).addClass('current');
 
//         var selector = $(this).attr('data-filter');
//         $container.isotope({
//             filter: selector,
//             animationOptions: {
//                 duration: 750,
//                 easing: 'linear',
//                 queue: false
//             }
//          });
//          return false;
//     }); 





// });


