class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :label

      t.timestamps
    end
  end
end
