class ChangeMessage < ActiveRecord::Migration
  def change
    change_column :messages, :message, :string
  end
end
