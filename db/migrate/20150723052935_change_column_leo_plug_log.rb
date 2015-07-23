class ChangeColumnLeoPlugLog < ActiveRecord::Migration
  def change
  	change_column :leo_plug_logs, :outlet_id, :string
  end
end
