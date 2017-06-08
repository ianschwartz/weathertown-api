class StationsController < ApplicationController
  before_action :set_station, only: [:show, :update, :destroy]
  skip_before_action :authorize_request, only: [:index, :show]

  # get /stations
  def index
    @stations = Station.all.paginate(page: params[:page], per_page: 20)
    json_response(@stations)
  end

  # post /stations
  def create
    @station = current_user.stations.create!(station_params)
    json_response(@station, :created)
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
