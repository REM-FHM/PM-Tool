class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :roadmap_id
      t.integer :component_id
      t.datetime :date

      t.timestamps null: false
    end
  end
end
