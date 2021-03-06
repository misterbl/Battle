require 'spec_helper'
require '././app.rb'

RSpec.feature 'attack', :type => :feature do
  scenario "confirmation of 'Lose'" do
    sign_in_and_play
    19.times{click_button 'Attack'
      click_button 'Continue'}
      expect(page).to have_content "Bob has won!"
    end
  end
