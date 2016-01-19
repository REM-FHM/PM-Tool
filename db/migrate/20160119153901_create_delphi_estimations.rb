class CreateDelphiEstimations < ActiveRecord::Migration
  def change
    create_table :delphi_estimations do |t|
      t.integer :p_id

      t.timestamps null: false
    end
  end
end
