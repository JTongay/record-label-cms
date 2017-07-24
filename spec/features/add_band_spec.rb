require 'rails_helper'

feature 'create new band' do
  scenario 'creates a new band with valid data' do
    visit('/')

    click_on('Add Band')
    fill_in("Band's name", with: "Test Band")
    fill_in('City', with: 'Austin')
    select('TX', from: 'State')
    select('July', from: 'band_start_date_2i')
    select('2008', from: 'band_start_date_1i')
    click_on('Create Band')

    expect(page).to have_content('Test Band was created')
    expect(Band.last.band_name).to eq('Test Band')
    expect(Band.last.city).to eq('Austin')
    expect(Band.last.state).to eq('Texas')
    expect(Band.last.start_date).to eq(Date.new(2008, 7, 1))
  end
end
