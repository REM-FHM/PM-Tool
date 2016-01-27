class CreateEstimations < ActiveRecord::Migration
  def change
    create_table :estimations do |t|
      t.integer :expert_form_id
      t.integer :workpackage_id
      t.integer :duration

      t.timestamps null: false
    end
  end
end
