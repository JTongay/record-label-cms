// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

    $('h1').on('click', function(){
     console.log($(this).text())
    });


    //Come back to this. Add an input for adding a song.
    $('#add-song').on('click', function(ev){
        ev.preventDefault();
        var $inputName = $('.song-title-input').attr('name')
        var $currentIndex = $inputName.split('[')[2]
        var $changeIndex = $currentIndex.split('')
        console.log($inputName)
        console.log(+$changeIndex[0] + 1)
        // $('.song-title-input').first().clone().appendTo('#song-title-section')
    })

    // $('#add-song').on('click', function(e){
    //     e.preventDefault()
    //     console.log($(this).data('name'))
    //     $('#song-title-section').append($(this).data())
    // })
});

