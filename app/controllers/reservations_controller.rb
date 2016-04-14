class ReservationsController < ApplicationController
	def index
		@reservation_user = Reservation.where(user_id: current_user.id)
		@list = List.find(params[:list_id])
		@reservation_list = @list.reservations.all
	
	end

	def show

	end

	def new
		@list = List.find(params[:list_id])
		@reservation = @list.reservations.new

	end

	def create

		@list = List.find(params[:list_id])
		@reservation = @list.reservations.build(reservation_params)
		@reservation.user_id = current_user.id
		@reservation.save
		redirect_to current_user
	end

	private
	def reservation_params
		params.require(:reservation).permit(:start_book, :end_book)
	end
end
