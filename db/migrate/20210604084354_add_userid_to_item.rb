class AddUseridToItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :user, foreign_key: true
  end
end
