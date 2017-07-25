require 'rails_helper'

describe 'Adding an Album' do

  it 'should add an album' do
    Band.create(band_name: 'Falsetta', city: 'Austin', state: 'TX', start_date: Date.new(2008,2,1))
    @band = Band.find_by band_name: 'Falsetta'
    visit('/')

    click_on('Add Album')
    select('Falsetta', from: 'Choose Band')
    fill_in('Album Title', with: 'Sleep Is for Babies')
    select('May', from: 'album_release_date_2i')
    select('2017', from: 'album_release_date_1i')
    click_on('Register Album')

    expect(page).to have_content('Sleep Is for Babies was just added')
    expect(Album.last.title).to eq('Sleep Is for Babies')
    expect(Band.find(@band.id).albums.title).to eq('Sleep Is for Babies')
  end
end