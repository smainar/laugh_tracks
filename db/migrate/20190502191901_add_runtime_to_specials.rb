class AddRuntimeToSpecials < ActiveRecord::Migration[5.1]
  def change
    add_column :specials, :runtime, :integer
  end
end
