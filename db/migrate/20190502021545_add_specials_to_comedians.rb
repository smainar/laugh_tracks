class AddSpecialsToComedians < ActiveRecord::Migration[5.1]
  def change
    add_reference :comedians, :special, foreign_key: true
  end
end
