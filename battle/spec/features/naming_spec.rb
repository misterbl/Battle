require 'spec_helper'
require '././app.rb'

RSpec.feature 'naming', :type => :feature do
  scenario 'entering names' do
    sign_in_and_play
    expect(page).to have_content 'Bob  MEATBALL THE DESTROYER'
  end
end
