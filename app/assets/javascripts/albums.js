// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

    $('h1').on('click', function(){
     console.log($(this).text())
    });


    //Come back to this. Add an input for adding a song.
    $('#add-song').on('click', function(ev){
        ev.preventDefault();
        $('.song-title-input').first().clone().appendTo('#song-title-section')
    })
});

