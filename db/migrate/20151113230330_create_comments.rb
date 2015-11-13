class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :comment_text

      t.timestamps null: false
    end
  end
end
