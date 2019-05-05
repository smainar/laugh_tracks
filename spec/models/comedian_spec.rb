require 'rails_helper'

RSpec.describe Comedian, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :hometown }
  end

  describe "relationships" do
    it { should have_many :specials }
  end

  describe "class methods" do
    before(:each) do
      @comedian_1 = Comedian.create(name: 'Demetri Martin', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
      @comedian_2 = Comedian.create(name: 'Steve Martin', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')
      @comedian_3 = Comedian.create(name: 'Bob', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
      @comedian_4 = Comedian.create(name: 'Sally', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')

      @comedians = Comedian.all
    end

    it ".find_age" do
      age = 45

      expect(@comedians.find_age(age)).to eq([@comedian_1, @comedian_3])
    end

    it ".average_age" do
      average_age = 59

      expect(@comedians.average_age).to eq(average_age)
    end

    it ".unique_cities" do

      expect(@comedians.unique_cities).to eq(['New York City', 'Waco'])
    end
  end
end
