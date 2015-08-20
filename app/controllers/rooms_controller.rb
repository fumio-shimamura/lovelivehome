class RoomsController < ApplicationController
  before_action :logged_in_user, only: [:create]

  def show
    @room = Room.find(params[:id])
  end

  def new
  end
  
  def create
  	@room = current_user.rooms.build(room_params)
  	if @room.save
  		flash[:success] = "Room creates!"
  		redirect_to @user
  	else
  		render 'welcom/index'
  	end
  end

  def destroy
    @room = current_user.rooms.find_by(id: params[:id])
    return redirect_to root_url if @room.nil?
    @room.destroy
    flash[:success] = "Room deleted"
    redirect_to request.referrer || root_url
  end

  private
  def room_params
  	params.require(:room).permit(:image, :type, :description, :detail01, :detail02, :detail03)
  end

end
