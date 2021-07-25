class AddMasterCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :master_countries, :north_america, :string
    add_column :master_countries, :south_america, :string
    add_column :master_countries, :asia, :string
    add_column :master_countries, :middle_east, :string
    add_column :master_countries, :africa, :string
    add_column :master_countries, :europe, :string
    add_column :master_countries, :oceania, :string
  end
end
