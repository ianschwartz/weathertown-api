class StationsController < ApplicationController
  before_action :set_station, only: [:show, :update, :destroy]

  # get /stations
  def index
    @stations = Station.all
    json_response(@stations)
  end

  # post /stations
  def create
    @station = Station.create!(station_params)
    json_response(@station)
  end

  # get /station/:id
  def show
    json_response(@station)
  end

  # put /stations/:id
  def update
    @station.update(station_params)
    head :no_content
  end

  # delete /stations/:id
  def destroy
    @station.destroy
    head :no_content
  end

  private

  def station_params
    params.permit(:name, :zipcode)
  end

  def set_station
    @station = Station.find(params[:id])
  end
end
