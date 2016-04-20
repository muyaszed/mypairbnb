class Modifylistcolumn < ActiveRecord::Migration
  def change
  	remove_column :lists, :not_avail
  	add_column :lists, :not_avail, :json, :default => {}
  end
end
