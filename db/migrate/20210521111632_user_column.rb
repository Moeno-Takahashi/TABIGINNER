class UserColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :birthday, :date
    add_column :users, :sex, :integer
    add_column :users, :user_image, :string
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string
  end
end
