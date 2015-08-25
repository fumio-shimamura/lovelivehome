class WelcomeController < ApplicationController
  def index
    @rooms = Room.all.order("created_at DESC").limit(30).page(params[:page]).per(12)
  end
end
