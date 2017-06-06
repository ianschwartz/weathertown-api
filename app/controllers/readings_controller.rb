class ReadingsController < ApplicationController

  before_action :set_station
  before_action :set_station_reading, only: [:show, :update, :destroy]
  skip_before_action :authorize_request, only: [:index, :show]

  # GET /stations/:station_id/readings
  def index
    json_response(@station.readings)
  end

  # GET /stations/:station_id/readings/:id
  def show
    json_response(@reading)
  end

  # post /stations/:station_id/readings
  def create
    @station.readings.create!(reading_params)
    json_response(@station, :created)
  end

  # PUT /stations/:station_id/readings/:id
  def update
    @reading.update(reading_params)
    head :no_content
  end

  # DELETE /stations/:station_id/readings/:id
  def destroy
    @reading.destroy
    head :no_content
  end

  private

  def reading_params
    params.permit(:temp, :humidity)
  end

  def set_station
    @station = Station.find(params[:station_id])
  end

  def set_station_reading
    @reading = @station.readings.find_by!(id: params[:id]) if @station
  end
end
