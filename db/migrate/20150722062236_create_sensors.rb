class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.references :type, index: true
      t.references :room, index: true

      t.timestamps
    end
  end
end
