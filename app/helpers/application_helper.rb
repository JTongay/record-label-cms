module ApplicationHelper
    def link_to_add_songs(title)
        link_to title, "#", class: "add-songs-field", ":data-field" => "<input class='text optional' type='text'  name='album[songs][]' id='album_'>" 
    end    
end
