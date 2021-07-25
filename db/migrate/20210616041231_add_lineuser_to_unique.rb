class AddLineuserToUnique < ActiveRecord::Migration[6.0]
  def change
    add_index :line_users, :uid, unique: true
    remove_column :users, :uid, :string
  end
end
