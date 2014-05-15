require 'spec_helper'

feature 'As a user, I want to' do

  scenario 'see a page to drive robots' do
    visit '/'
    expect(page).to have_content 'Martian Robots'
  end

  scenario 'direct a robot to go in a circle' do
    visit '/'
    select('Mars (5 by 3)', from: 'planet-size')
    select('(1, 1)', from: 'robot-location')
    select('East', from: 'robot-orientation')
    click_button("Begin!")
    expect(page).to have_content 'Roaming Mars from (1, 1) facing East'
  end

end
