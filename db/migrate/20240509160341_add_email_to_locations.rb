class AddEmailToLocations < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :email, :string
  end
end
