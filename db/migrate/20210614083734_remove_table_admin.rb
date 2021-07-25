class RemoveTableAdmin < ActiveRecord::Migration[6.0]
  def change
    drop_table :admins
  end
end
