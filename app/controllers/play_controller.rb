class PlayController < ApplicationController
  def index
    render json: Play.all.as_json(only: [:id, :_id, :title, :updated_at, :roles])
  end

  def sync
    puts params
  end

  def show
    @play = Play.includes(:speeches).find(params[:id])
    @speeches = @play.speeches
    if params[:sync_date]
      @speeches = @speeches.where('updated_at > ?', params[:sync_date])
    end

  end
end
