class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.integer :stNumber
      t.string :stName
      t.integer :t_id

      t.timestamps null: false
    end
  end
end
