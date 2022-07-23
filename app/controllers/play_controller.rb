class PlayController < ApplicationController
  def index
    render json: Play.all.as_json(only: [:id, :_id, :title, :description, :author, :updated_at, :roles])
  end

  def sync
    puts params
  end

  def show
    @play = Play.find(params[:id])
  end
end
