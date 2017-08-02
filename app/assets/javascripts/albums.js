// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){


    $('#select-band').on('click', function(){
     console.log($(this))
    })

    $('h1').on('click', function(){
     console.log($(this).text())
    })

})

