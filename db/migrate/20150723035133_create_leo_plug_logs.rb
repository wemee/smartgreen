class CreateLeoPlugLogs < ActiveRecord::Migration
  def change
    create_table :leo_plug_logs do |t|
      t.references :sensor, index: true
      t.integer :outlet_id
      t.datetime :date_time
      t.string :device
      t.float :standby_watt
      t.float :voltage
      t.float :amp
      t.float :power
      t.float :energy
      t.boolean :power_on_off
      t.string :reactive_power

      t.timestamps
    end
  end
end
