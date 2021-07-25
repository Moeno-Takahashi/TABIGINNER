class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.integer :line_messaging_id, null: false
      t.string :line_messaging_secret, null: false
      t.string :line_messaging_token, null: false
      t.integer :line_login_id, null: false
      t.string :line_login_secret, null: false

      t.timestamps
    end
  end
end
