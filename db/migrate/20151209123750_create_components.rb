class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :cName
      t.integer :cNumber
      t.integer :m_id

      t.timestamps null: false
    end
  end
end
