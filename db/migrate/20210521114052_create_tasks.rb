class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
