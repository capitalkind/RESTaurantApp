// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
window.onload = init;
  function init(){


  function orderColor(element, curNumber){
    curNumber++;

    if(curNumber > 4){
      curNumber = 4;
    }
    console.log(curNumber);
    element.addClass('color' + curNumber, 10000);
    element.attr('class', 'color' + curNumber);
    setTimeout(function(){
      orderColor(element, curNumber)}, 10000);
  }

  orderColor($('#order-tr'), 0);

}

