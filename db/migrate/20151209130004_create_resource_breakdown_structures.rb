class CreateResourceBreakdownStructures < ActiveRecord::Migration
  def change
    create_table :resource_breakdown_structures do |t|
      t.integer :p_id

      t.timestamps null: false
    end
  end
end
