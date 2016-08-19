require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    click_on "Create todo"
    fill_in "Title", with: "Stroke cat"
    click_on "Submit"
    expect(page).to have_css '.todos li', text: "Stroke cat"
  end
end
