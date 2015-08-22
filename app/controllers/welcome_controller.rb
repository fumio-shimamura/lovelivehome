class WelcomeController < ApplicationController
  def index
    @rooms = Room.all.order("updated_at DESC").limit(30).page(params[:page]).per(10)
  end
end
