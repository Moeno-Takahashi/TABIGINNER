class AddUserNullFalse < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :sex, false
    change_column_null :users, :email, false
    change_column_null :users, :birthday, false
    add_index :users, :email, unique: true
  end
end
