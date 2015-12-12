class CreateWorkpackages < ActiveRecord::Migration
  def change
    create_table :workpackages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
