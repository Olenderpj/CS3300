require 'rails_helper'

# Feature tests for the application site's front-end behavior for home page
RSpec.feature "Visiting the homepage", type: :feature do
  # Navigate to the the root page of the website and confirm it displays 
  # projects

  scenario "the visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end