class MuseumsController < ApplicationController
  before_action :set_museum, only: %i[ show update destroy media ]

  # GET /museums
  def index
    @museums = Museum.all

    render json: @museums
  end

  # GET /museums/1
  def show
    render json: @museum
  end

  # POST /museums
  def create
    @museum = Museum.new(museum_params)

    if @museum.save
      render json: @museum, status: :created, location: @museum
    else
      render json: @museum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /museums/1
  def update
    if @museum.update(museum_params)
      render json: @museum
    else
      render json: @museum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /museums/1
  def destroy
    @museum.destroy
  end

  def media
    render json: @museum.medium
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_museum
      @museum = Museum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def museum_params
      params.require(:museum).permit(:name)
    end
end
