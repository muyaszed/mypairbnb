class ListsController < ApplicationController
  before_action :require_login

  def index
  	@list = List.all
  end

  def show 
  	@list = List.find(params[:id])
  end

  def edit
  	@list = List.find(params[:id])
  end

  def update
  	@list = List.find(params[:id])
  	@list.update(list_params)
  	redirect_to @list
  end

  def destroy
  	@list = List.find(params[:id])
  	@list.destroy
  	redirect_to lists_path
  end
  
  def new

  end

  def create
    @user = current_user
    @list = @user.lists.build(list_params) #applying the the built in association methods
    @list.save
  	# @list = List.new(list_params)
  	# @list.user_id = current_user.id
  	# @list.save
  	redirect_to @list
  end

  private

  def list_params
  	params.require(:list).permit(:home_type, :room_type)
  end

  
end
