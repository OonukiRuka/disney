class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :genre
      t.string :area
      t.text :about

      t.timestamps
    end
  end
end
