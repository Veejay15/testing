class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :category
      t.string :body
      t.date :deadline

      t.timestamps
    end
  end
end
