class ReservationsController < ApplicationController
	def index
		@reservation_user = Reservation.where(user_id: current_user.id)
		@list = List.find(params[:list_id])
		@reservation_list = @list.reservations.all
	
	end

	def show

		@reservation = Reservation.find(params[:id])

		
	end

	def new
		@list = List.find(params[:list_id])
		@reservation = @list.reservations.new
		
	end

	def create

		@list = List.find(params[:list_id])
		@reservation = @list.reservations.build(reservation_params)
		@reservation.update(user_id: current_user.id, total: count_total_amount)
		@list.not_avail["#{@reservation.id}"] = generate_days
	      
	    @list.save
		ReservationMailer.booking_email(current_user, @list.user, @reservation.id, @reservation.total, list_url(params[:list_id]), list_reservation_url(params[:list_id], @reservation.id)).deliver_now
		
	    

	    
	    
		redirect_to current_user
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		@reservation.list.not_avail.delete(params[:id])
		
		@reservation.list.save
		redirect_to current_user
	end

	private
	def reservation_params
		params.require(:reservation).permit(:start_book, :end_book)
	end

	def count_days
		(@reservation.end_book.to_date - @reservation.start_book.to_date).to_i
	end

	def count_total_amount
		@list.rental*count_days
	end

	def generate_days
	    start_d =  @reservation.start_book
	    end_d =  @reservation.end_book
	    bucket = []
	    
	    total_days = (end_d.to_date - start_d.to_date).to_i 
	    (1..total_days).each do |day|
	      bucket << start_d
	      start_d = (start_d.to_date + 1).to_s
	      
	      
	    end

	   
	    
	    
	    bucket

    end

end
