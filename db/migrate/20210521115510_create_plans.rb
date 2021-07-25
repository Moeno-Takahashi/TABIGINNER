class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :country
      t.date :departure_date
      t.integer :days

      t.timestamps
    end
  end
end
