class CreateSkates < ActiveRecord::Migration[5.2]
  def change
    create_table :skates do |t|
      t.string :brand
      t.integer :model_year
      t.string :color
      t.integer :user_id

      t.timestamps
    end
  end
end
