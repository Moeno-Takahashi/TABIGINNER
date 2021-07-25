class PlanAddreference < ActiveRecord::Migration[6.0]
  def change
    add_reference :plans, :user, foreign_key: true
  end
end
