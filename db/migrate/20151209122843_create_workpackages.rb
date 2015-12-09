class CreateWorkpackages < ActiveRecord::Migration
  def change
    create_table :workpackages do |t|
      t.integer :wpNumber
      t.string :wpName
      t.integer :st_id

      t.timestamps null: false
    end
  end
end
