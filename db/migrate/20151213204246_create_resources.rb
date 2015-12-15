class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :role_id
      t.string :qualification
      t.string :experience
      t.decimal :quantitiy

      t.timestamps null: false
    end
  end
end
