class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :tNumber
      t.string :tName
      t.integer :wbs_id

      t.timestamps null: false
    end
  end
end
