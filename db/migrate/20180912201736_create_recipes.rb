class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :time
      t.string :description
      t.integer :difficulty
      t.string :ingredient
      t.integer :price

      t.timestamps
    end
  end
end
