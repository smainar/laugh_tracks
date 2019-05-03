class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name
  validates_presence_of :age
  validates_presence_of :hometown

  def self.find_age(age)
    self.where(age: age)
  end

  def self.average_age

  end
end
