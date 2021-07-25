class CreateUserItems < ActiveRecord::Migration[6.0]
  def change
    create_table :user_items do |t|

      t.timestamps
    end
  end
end
