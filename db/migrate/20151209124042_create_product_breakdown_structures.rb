class CreateProductBreakdownStructures < ActiveRecord::Migration
  def change
    create_table :product_breakdown_structures do |t|
      t.integer :p_id

      t.timestamps null: false
    end
  end
end
