class CreateRamEntries < ActiveRecord::Migration
  def change
    create_table :ram_entries do |t|
      t.integer :ram_id
      t.integer :workpackage_id
      t.integer :component_id
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
