require 'spec_helper'
require '././app.rb'

RSpec.feature 'view hp', :type => :feature do
  scenario 'checking P2 HP' do
    sign_in_and_play
    expect(page).to have_content 'MEATBALL THE DESTROYER\'s Hit Points = 100'
  end
end
