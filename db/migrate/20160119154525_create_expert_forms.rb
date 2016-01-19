class CreateExpertForms < ActiveRecord::Migration
  def change
    create_table :expert_forms do |t|
      t.integer :round_id
      t.string :expertName

      t.timestamps null: false
    end
  end
end
