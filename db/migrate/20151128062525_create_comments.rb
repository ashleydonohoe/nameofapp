class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.text :body
      t.integer :rating
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
