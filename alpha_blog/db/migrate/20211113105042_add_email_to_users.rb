class AddEmailToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :created_at, :datetime
    remove_column :users, :updated_at, :datetime
    add_column :users, :email, :string
    add_column :users, :created_at, :datetime
    add_column :users, :updated_at, :datetime
  end
end
