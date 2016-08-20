require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    click_on "Create todo"
    fill_in "Title", with: "Stroke cat"
    click_on "Submit"
    click_on "Complete"
    expect(page).to have_css ".todos li.completed", text: "Stroke cat"
  end
end
