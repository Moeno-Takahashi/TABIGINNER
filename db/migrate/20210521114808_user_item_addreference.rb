class UserItemAddreference < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_items, :user, foreign_key: true
    add_reference :user_items, :item, foreign_key: true
  end
end
