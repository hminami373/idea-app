class IdeasController < ApplicationController

  def index
    # @idea = Idea.find(params[:idea_id])
    # @room = Room.find(params[:room_id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:image, :idea_info).merge(user_id: current_user.id, room_id: params[:room_id])
  end

end
