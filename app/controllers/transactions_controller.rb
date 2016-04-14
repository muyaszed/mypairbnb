class TransactionsController < ApplicationController
	before_action :require_login
	before_action :check_reservation!

  def new

  	@list = List.find(params[:list_id])
  	@reservation = Reservation.find(params[:reservation_id])
  	
  	gon.client_token = generate_client_token

  end

  def create
  	@reservation = Reservation.find(params[:reservation_id])
    @result = Braintree::Transaction.sale(
              amount: @reservation.list.rental,
              payment_method_nonce: params[:payment_method_nonce])
    if @result.success?
    	byebug
      # current_user.purchase_cart_movies!
      redirect_to user_path(@reservation.user_id), notice: "Congraulations! Your transaction has been successfully!"
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end


  private

  def check_reservation!
  	if current_user.reservations.empty?
  		redirect_to lists_path, alert: "Please make some reservation first..."
  	end
  end

  def generate_client_token
  	Braintree::ClientToken.generate
  end
end


