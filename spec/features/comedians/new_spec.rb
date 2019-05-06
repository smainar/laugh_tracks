require "rails_helper"

RSpec.describe "As a vistor", type: :feature do
  context "When I visit `/comedians/new`" do
    it "I can fill out a form to create a new comedian" do

      visit "/comedians/new"

      fill_in "Name", with: "Stella"
      fill_in "Age", with: 100
      fill_in "Hometown", with: "Denver"

      click_on "Create Comedian"

      expect(current_path).to eq("/comedians")

      stella = Comedian.last
      expect(page).to have_content(stella.name)
      expect(page).to have_content(stella.age)
      expect(page).to have_content(stella.hometown)
    end
  end
end
