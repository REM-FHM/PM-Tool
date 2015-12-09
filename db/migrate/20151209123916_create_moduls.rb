class CreateModuls < ActiveRecord::Migration
  def change
    create_table :moduls do |t|
      t.string :mName
      t.integer :mNumber
      t.integer :sp_id

      t.timestamps null: false
    end
  end
end
