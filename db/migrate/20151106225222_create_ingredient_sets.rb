class CreateIngredientSets < ActiveRecord::Migration
  def change
    create_table :ingredient_sets do |t|
      t.string :name
      t.text :directions
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
