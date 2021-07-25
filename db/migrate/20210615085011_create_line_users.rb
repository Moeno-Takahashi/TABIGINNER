class CreateLineUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :line_users do |t|
      t.string :uid
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
