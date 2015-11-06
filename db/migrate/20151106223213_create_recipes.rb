class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.float :prep_time_minutes
      t.string :yield
      t.float :cook_time_minutes
      t.text :summary
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
