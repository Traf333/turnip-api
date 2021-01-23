class PlayController < ApplicationController
  def index
    render json: Play.all.as_json(only: [:id, :title, :updated_at, :roles])
  end

  def sync
    puts params
  end

  def show
    @play = Play.includes(:speeches).find(params[:id])

  end
end
