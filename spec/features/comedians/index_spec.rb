require "rails_helper"

RSpec.describe "comedians index page", type: :feature do
  before(:each) do
    @comedian_1 = Comedian.create(name: 'Demetri Martin', age: 45, hometown: 'New York City')
    @comedian_2 = Comedian.create(name: 'Steve Martin', age: 73, hometown: 'Waco')

    @special_1 = @comedian_1.specials.create!(name: "Special 1", runtime: 45)
    @special_2 = @comedian_1.specials.create!(name: "Special 2", runtime: 50)
    @special_3 = @comedian_2.specials.create!(name: "Special 3", runtime: 55)
    @special_4 = @comedian_2.specials.create!(name: "Special 4", runtime: 60)
  end

  it "user can see a list of all comedians with their name, age, and hometown" do
    visit "/comedians"

    within "#comedian-#{@comedian_1.id}" do
      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_1.hometown)
      # expect(page).to have_xpath("//img[contains(@src,'#{comedian_1.image}')]")
    end

    within "#comedian-#{@comedian_2.id}" do
      expect(page).to have_content(@comedian_2.name)
      expect(page).to have_content(@comedian_2.age)
      expect(page).to have_content(@comedian_2.hometown)
      # expect(page).to have_xpath("//img[contains(@src,'#{comedian_2.image}')]")
    end
  end

  it "user sees a list of each comedian's TV specials, including name and run time (minutes)" do
    visit "/comedians"
    save_and_open_page

    within "#special-#{@special_1.id}" do
      expect(page).to have_content(@special_1.name)
      expect(page).to have_content(@special_1.runtime)

      expect(page).to_not have_content(@special_2.name)
    end

    within "#special-#{@special_2.id}" do
      expect(page).to have_content(@special_2.name)
      expect(page).to have_content(@special_2.runtime)

      expect(page).to_not have_content(@special_1.name)
    end
  end
end
