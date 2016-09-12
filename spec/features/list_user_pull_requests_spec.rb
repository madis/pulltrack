require 'rails_helper'

RSpec.feature 'List user pull requests', :feature do
  it 'has a list of pull requests for user' do
    visit '/pull_requests'
    expect(page).to have_selector('pull-request', count: 2)
  end
end