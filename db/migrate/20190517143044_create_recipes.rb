class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :method
      t.integer :servings
      t.integer :calories
      t.string :preptime
      t.integer :meal
      t.string :amount
     
      t.timestamps
    end
  end
end
