class CreateMasterCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :master_countries do |t|

      t.timestamps
    end
  end
end
