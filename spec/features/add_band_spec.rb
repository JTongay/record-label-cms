require 'rails_helper'

feature 'create new band' do
  scenario 'creates a new band with valid data' do
    visit('/')

    click_on('Add Band')
    fill_in("Band's name", with: "Test Band")
    fill_in('City', with: 'Austin')
    select('TX', from: 'State')
    select('06/2008', from: 'Start Date')
    click_on('Create Band')

    expect(page).to have_content('Test Band was created')
    expect(Band.last.band_name).to eq('Test Band')
    expect(Band.last.start_date).to eq('06/2008')
  end
end
