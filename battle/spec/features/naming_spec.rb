require 'spec_helper'
require '././app.rb'

RSpec.feature 'naming', :type => :feature do
  scenario 'entering names' do
    visit '/'
    fill_in :player_1_name, with: 'Joe'
    fill_in :player_2_name, with: 'MEATBALL THE DESTROYER'
    click_button 'Submit'
    expect(page).to have_content 'Joe vs. MEATBALL THE DESTROYER'
  end
end
