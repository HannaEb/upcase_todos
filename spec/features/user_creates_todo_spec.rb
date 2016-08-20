require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo("Stroke cat")
    expect(page).to display_todo "Stroke cat"
  end
end
