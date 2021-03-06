require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create!(title: "Stroke cat", email: "marley@cat.com")
    sign_in_as "luni@cat.com"
    expect(page).not_to display_todo "Stroke cat"
  end
end
