class CreateLeoPlugs < ActiveRecord::Migration
  def change
    create_table :leo_plugs do |t|
      t.string :mac
      t.string :school
      t.string :brand
      t.string :voltage

      t.timestamps
    end
    add_index :leo_plugs, :school
  end
end
