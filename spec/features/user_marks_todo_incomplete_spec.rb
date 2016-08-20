require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo("Stroke cat")
    click_on "Incomplete"
    expect(page).not_to display_completed_todo("Stroke cat")
    expect(page).to display_todo("Stroke cat")
  end
end
