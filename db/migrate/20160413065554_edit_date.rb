class EditDate < ActiveRecord::Migration
  def change
  	remove_column :reservations, :start_book
  	remove_column :reservations, :end_book
  	add_column :reservations, :start_book, :string
  	add_column :reservations, :end_book, :string
  end
end
