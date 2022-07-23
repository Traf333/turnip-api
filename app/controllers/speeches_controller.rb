class SpeechesController < ApplicationController
  before_action :set_speech, only: [:show, :edit, :update, :destroy]
  skip_forgery_protection only: [:update, :destroy]

  # GET /speeches
  # GET /speeches.json
  def index
    scope = Speech.includes(:audio_attachment).where(play_id: params[:play_id])
    scope = scope.where('updated_at > ?', params[:sync_date]) if params[:sync_date]

    @speeches = scope.order(created_at: :asc)
  end

  # GET /speeches/1
  # GET /speeches/1.json
  def show
  end

  # GET /speeches/new
  def new
    @speech = Speech.new
  end

  # GET /speeches/1/edit
  def edit
  end

  # POST /speeches
  # POST /speeches.json
  def create
    @speech = Speech.new(speech_params)

    respond_to do |format|
      if @speech.save
        format.json { render :show, status: :created, location: @speech }
      else
        format.json { render json: @speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speeches/1
  # PATCH/PUT /speeches/1.json
  def update
    respond_to do |format|
      if @speech.update(speech_params)
        format.json { render :show, status: :ok, location: @speech }
      else
        format.json { render json: @speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speeches/1
  # DELETE /speeches/1.json
  def destroy
    @speech.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_speech
    @speech = Speech.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def speech_params
    params.fetch(:speech, {}).permit!
  end
end
