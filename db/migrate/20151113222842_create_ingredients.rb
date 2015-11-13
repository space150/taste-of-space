class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :measurement
      t.references :ingredient_set, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
