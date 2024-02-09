class AddGenre2ToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :genre2, :string
  end
end
