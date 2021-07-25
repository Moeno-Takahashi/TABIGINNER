class PlanNullFalse < ActiveRecord::Migration[6.0]
  def change
    change_column_null :plans, :country, false
  end
end
