class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :due_date
      t.boolean :completed
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
