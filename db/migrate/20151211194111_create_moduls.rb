class CreateModuls < ActiveRecord::Migration
  def change
    create_table :moduls do |t|
      t.string :name
      t.integer :subproduct_id

      t.timestamps null: false
    end
  end
end
