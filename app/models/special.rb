class Special < ApplicationRecord
  has_many :comedians

  validates_presence_of :name
end
