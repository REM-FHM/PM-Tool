class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :reNumber
      t.string :reQualification
      t.string :reExperience
      t.decimal :reQuantity
      t.integer :ro_id

      t.timestamps null: false
    end
  end
end
