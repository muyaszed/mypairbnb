class DelAndAddColumn < ActiveRecord::Migration
  def change
  	remove_column :lists, :images
  	add_column :lists, :images, :json
  end
end
