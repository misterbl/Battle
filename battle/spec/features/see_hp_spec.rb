require 'spec_helper'
require '././app.rb'

RSpec.feature 'view hp', :type => :feature do
  scenario 'checking P2 HP' do
    visit '/'
    fill_in :player_1_name, with: 'Joe'
    fill_in :player_2_name, with: 'MEATBALL THE DESTROYER'
    click_button 'Submit'
    expect(page).to have_content 'MEATBALL THE DESTROYER Hitpoints = 100'
  end
end
