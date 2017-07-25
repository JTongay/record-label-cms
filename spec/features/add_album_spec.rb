require 'rails_helper'

describe 'Adding an Album' do

  it 'should add an album' do
    visit('/')

    click_on('Add Band')

  end
end