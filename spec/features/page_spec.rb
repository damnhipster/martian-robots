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
    select('RFRFRFRF', from: 'instruction')
    click_button("Begin!")
    expect(page).to have_content 'Roaming Mars from (1, 1) facing East'
    expect(page).to have_content 'Ended up at (1, 1) facing East'
  end

  scenario 'direct a robot to fall off the edge' do
    visit '/'
    select('Mars (5 by 3)', from: 'planet-size')
    select('(3, 2)', from: 'robot-location')
    select('North', from: 'robot-orientation')
    select('FRRFLLFFRRFLL', from: 'instruction')
    click_button("Begin!")
    expect(page).to have_content 'Roaming Mars from (3, 2) facing North'
    expect(page).to have_content 'Ended up at (3, 3) facing North'
    expect(page).to have_content 'Ended up lost!'
  end

end
