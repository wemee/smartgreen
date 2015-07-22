class CreateAiPlugLogs < ActiveRecord::Migration
  def change
    create_table :ai_plug_logs do |t|
      t.references :sensor, index: true
      t.integer :outlet_id
      t.string :attrid_val
      t.datetime :date_time
      t.string :user_name
      t.string :device
      t.datetime :install_time
      t.float :standby_watt

      t.timestamps
    end
  end
end
