// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){


    //Come back to this. Add an input for adding a song.
    $('#add-song').on('click', function(ev){
        ev.preventDefault();
        var $currentInput = $('.song-title-input').last().clone();
        var $inputName = $currentInput.attr('name');
        var $currentIndex = $inputName.split('[');
        var $changeIndex = $currentIndex[2].split('');
        $changeIndex[0] = +$changeIndex[0] + 1;
        var $newIndex = $changeIndex.join("");
        $currentIndex[2] = $newIndex.toString();
        var $joinNew = $currentIndex.join('[');
        $currentInput.attr('name', $joinNew);
        $currentInput.appendTo('#song-title-section');
        console.log($currentInput.attr('name'));

        // $('.song-title-input').first().clone().appendTo('#song-title-section')
    })

    // $('#add-song').on('click', function(e){
    //     e.preventDefault()
    //     console.log($(this).data('name'))
    //     $('#song-title-section').append($(this).data())
    // })
});

