class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.integer :tNumber
      t.string :tName
      t.integer :rbs_id

      t.timestamps null: false
    end
  end
end
