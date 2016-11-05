class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :name, null: false
      t.string :email,  null: false
      t.text :comment, null: false
      t.timestamps null: false
    end
  add_index :comments, :post_id
  end
end
