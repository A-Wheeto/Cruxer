class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.text :description
      t.float :rating
      t.string :phone

      t.timestamps
    end
  end
end
