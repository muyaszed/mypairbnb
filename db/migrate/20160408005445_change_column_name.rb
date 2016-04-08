class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :lists, :type, :home_type
  end
end
