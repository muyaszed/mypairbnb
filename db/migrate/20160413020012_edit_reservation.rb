class EditReservation < ActiveRecord::Migration
  def change
  	add_column :lists, :start_avail, :date
  	add_column :lists, :end_avail, :date
  	add_column :lists, :not_avail, :json
  end
end
