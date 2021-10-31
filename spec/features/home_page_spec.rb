require "rails_helper"

# Test the home page feature and see if the text "Projects" is present
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end
