class AddUserToUid < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :uid, :string
  end
end
