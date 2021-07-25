class AddAttrEncryptedToLineUser < ActiveRecord::Migration[6.0]
  def change
    add_column :line_users, :encrypted_uid, :string
    add_column :line_users, :encrypted_uid_iv, :string
  end
end
