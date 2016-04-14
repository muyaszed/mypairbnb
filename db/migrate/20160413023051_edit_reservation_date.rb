class EditReservationDate < ActiveRecord::Migration
  def change
  	remove_column :reservations, :start
  	remove_column :reservations, :end
  	add_column :reservations, :start_book, :date
  	add_column :reservations, :end_book, :date
  end
end
