require 'spec_helper'
require '././app.rb'

RSpec.feature 'attack', :type => :feature do
  scenario 'attack P2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'MEATBALL THE DESTROYER has been attacked!'
  end

  scenario 'confirmation of attack' do
    sign_in_and_play
    click_button 'Attack'
    # click_link 'Continue battle'
    expect(page).to have_content 'MEATBALL THE DESTROYER has lost 10HP!'
  end
end
