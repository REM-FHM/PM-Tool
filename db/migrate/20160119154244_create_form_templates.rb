class CreateFormTemplates < ActiveRecord::Migration
  def change
    create_table :form_templates do |t|
      t.integer :round_id

      t.timestamps null: false
    end
  end
end
