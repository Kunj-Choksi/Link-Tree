class AddFieldsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :full_name, :string
    add_column :users, :body, :text
  end
end
