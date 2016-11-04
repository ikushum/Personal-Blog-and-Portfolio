class AddNewFieldAndChangeDateTime < ActiveRecord::Migration
  def change
    add_column :posts, :postimg, :string
    change_column :posts, :created_at, :date
  end
end
