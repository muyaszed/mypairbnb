class UsersController < ApplicationController
	def show 
		@user = User.find(params[:id])
		@reservations = Reservation.where(user_id: params[:id])
		@lists = @user.lists.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
	
		@user.update(user_params)
	
		
		redirect_to @user
	end


	private

	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :avatar)
	end
end