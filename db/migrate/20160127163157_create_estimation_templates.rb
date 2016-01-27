class CreateEstimationTemplates < ActiveRecord::Migration
  def change
    create_table :estimation_templates do |t|
      t.integer :form_template_id
      t.integer :workpackage_id
      t.string :comment

      t.timestamps null: false
    end
  end
end
