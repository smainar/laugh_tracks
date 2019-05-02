require "rails_helper"

RSpec.describe "comedians index page", type: :feature do
  it "user can see all comedians" do
    comedian_1 = Comedian.create(name: 'Demetri Martin', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
    comedian_2 = Comedian.create(name: 'Steve Martin', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')

    visit "/comedians"

    expect(page).to have_content(comedian_1.name)
    expect(page).to have_content(comedian_1.age)
    expect(page).to have_content(comedian_1.hometown)
    expect(page).to have_xpath("//img[contains(@src,'#{comedian_1.image}')]")
    expect(page).to have_content(comedian_2.name)
    expect(page).to have_content(comedian_2.age)
    expect(page).to have_content(comedian_2.hometown)
    expect(page).to have_xpath("//img[contains(@src,'#{comedian_2.image}')]")
  end
end
