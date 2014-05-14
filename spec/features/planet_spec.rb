require 'spec_helper'

feature 'As a user, I want to' do
  scenario 'create a planet' do
    visit '/'
    expect(page).to have_content 'Create a planet'
  end
end
