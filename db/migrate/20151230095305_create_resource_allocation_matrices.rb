class CreateResourceAllocationMatrices < ActiveRecord::Migration
  def change
    create_table :resource_allocation_matrices do |t|
      t.integer :p_id

      t.timestamps null: false
    end
  end
end
