class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name
  validates_presence_of :age
  validates_presence_of :hometown

  def self.find_age(age)
    self.where(age: age)
  end

  def specials_count
    self.specials.count
  end

  def self.average_age
    self.average(:age)
  end

  def self.unique_cities
    cities = self.select(:hometown).distinct.map do |comedian|
      comedian.hometown
    end
    cities.sort.join(", ")
  end
end
