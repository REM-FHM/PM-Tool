class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :delphiEstimation_id
      t.integer :count
      t.boolean :closed

      t.timestamps null: false
    end
  end
end
