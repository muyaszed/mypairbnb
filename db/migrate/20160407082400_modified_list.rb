class ModifiedList < ActiveRecord::Migration
  def change
  	add_column :lists, :room_type, :string
  	add_column :lists, :accomadation, :string
  	add_column :lists, :city, :string
  	
  end
end
