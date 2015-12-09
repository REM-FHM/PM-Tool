class CreateSubproducts < ActiveRecord::Migration
  def change
    create_table :subproducts do |t|
      t.string :spName
      t.integer :spNumber
      t.integer :pbs_id

      t.timestamps null: false
    end
  end
end
