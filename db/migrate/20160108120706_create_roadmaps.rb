class CreateRoadmaps < ActiveRecord::Migration
  def change
    create_table :roadmaps do |t|
      t.integer :p_id

      t.timestamps null: false
    end
  end
end
