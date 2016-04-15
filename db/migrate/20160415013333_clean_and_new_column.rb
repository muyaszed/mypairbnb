class CleanAndNewColumn < ActiveRecord::Migration
  def change
  	drop_table :pictures

  	add_column :reservations, :status, :string, :default => "open"
  	add_column :reservations, :total, :string
  	add_column :reservations, :transaction_id, :string
  end
end
