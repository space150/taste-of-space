class CreateYums < ActiveRecord::Migration
  def change
    create_table :yums do |t|
      t.references :user, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
