class LocationsController < ApplicationController
  before_action :set_location, only: [:update, :destroy]

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    redirect_to customer_path(@location.customer_id)
  end

  def update
  	@location.update_attributes(location_params)
  	redirect_to customer_path(@location.customer_id)
  end

  def destroy
  	@location.destroy
  	redirect_to customer_path(@location.customer_id)
  end

  private

  def location_params
    params.require(:location).permit(:adres, :phone, :comment, :customer_id)
  end

  def set_location
    @location = Location.find(params[:id])
  end

end
