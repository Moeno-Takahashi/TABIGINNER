class Destroytablemastercountry < ActiveRecord::Migration[6.0]
  def change
    drop_table :master_countries
  end
end
