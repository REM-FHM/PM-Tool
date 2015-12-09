class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :roNumber
      t.string :roName
      t.integer :t_id

      t.timestamps null: false
    end
  end
end
