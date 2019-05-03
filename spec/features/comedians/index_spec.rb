require "rails_helper"

RSpec.describe "comedians index page", type: :feature do
  before(:each) do
    @comedian_1 = Comedian.create(name: 'Demetri Martin', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
    @comedian_2 = Comedian.create(name: 'Steve Martin', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')

    @special_1 = @comedian_1.specials.create!(name: "Special 1", runtime: 45)
    @special_2 = @comedian_1.specials.create!(name: "Special 2", runtime: 50)
    @special_3 = @comedian_2.specials.create!(name: "Special 3", runtime: 55)
    @special_4 = @comedian_2.specials.create!(name: "Special 4", runtime: 60)
  end

  it "visitor can see a list of all comedians with their name, age, and hometown" do
    visit "/comedians"

    within "#comedian-#{@comedian_1.id}" do
      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_1.hometown)
    end

    within "#comedian-#{@comedian_2.id}" do
      expect(page).to have_content(@comedian_2.name)
      expect(page).to have_content(@comedian_2.age)
      expect(page).to have_content(@comedian_2.hometown)
    end
  end

  it "visitor sees a list of each comedian's TV specials, including name and run time (minutes)" do
    visit "/comedians"

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

  it "visitor can see a thumbnail image for each comedian" do
    visit "/comedians"

    within "#comedian-#{@comedian_1.id}" do
      expect(page).to have_css("img[src='#{@comedian_1.image}']")
    end
  end

  it "visitor sees the list of comedians on the page that match the age criteria" do

    comedian_3 = Comedian.create(name: 'Bob', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
    comedian_4 = Comedian.create(name: 'Sally', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')

    visit "/comedians?age=45"

      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(comedian_3.age)

      expect(page).to_not have_content(@comedian_2.age)
      expect(page).to_not have_content(comedian_4.age)
  end

  # As a visitor
  # When I visit `/comedians`
  # Then I see an area at the top of the page called 'Statistics'
  # In that 'Statistics' area, I see the following information:
  # - the average age of all comedians on the page (if the page is filtered for specific comedians, the statistics should reflect the new group)
  # - a unique list of cities for each comedian on the page
  #
  # Averaging and uniqueness should be done in ActiveRecord NOT
  # using Ruby
  it "visitor sees area at top of the page called 'Statistics'
  for average age of all comedians" do
     visit "/comedians"

     within ".statistics" do
       expect(page).to have_content("Statistics")
       expect(page).to have_content("#{Comedian.average_age}")
     end
   end
end
