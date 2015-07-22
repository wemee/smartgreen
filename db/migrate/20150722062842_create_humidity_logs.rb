class CreateHumidityLogs < ActiveRecord::Migration
  def change
    create_table :humidity_logs do |t|
      t.references :sensor, index: true
      t.float :value
      t.datetime :date_time

      t.timestamps
    end
  end
end
