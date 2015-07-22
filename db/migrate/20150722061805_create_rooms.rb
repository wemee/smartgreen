class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :label
      t.references :school, index: true

      t.timestamps
    end
  end
end
