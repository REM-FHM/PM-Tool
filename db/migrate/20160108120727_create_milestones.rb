class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :roadmap_id
      t.integer :workpackage_id
      t.integer :endtime

      t.timestamps null: false
    end
  end
end
