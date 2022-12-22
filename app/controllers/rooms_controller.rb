class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @room = Room.order('created_at DESC')
  end

  private

  def room_params
    params.require(:room).permit(:image, :theme, :theme_info).merge(user_id: current_user.id)
  end
end


