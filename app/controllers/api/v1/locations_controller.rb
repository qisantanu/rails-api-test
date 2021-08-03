class Api::V1::LocationsController < ApplicationController
  def create
    if !(params["temperatureC"].present? && params["latitude"].present? && params["longitude"].present?)
      render json: { message: "Invalid params" }, status: 422
    else
      fahrenheit = (params["temperatureC"].to_i * 9 / 5) + 32
      location = Location.create(latitude: params["latitude"], longitude: params["longitude"], temperatureF: fahrenheit, temperatureC: params["temperatureC"], createdOn: Time.zone.now, altitude: params["altitude"])

      render json: location, status: 201
    end
  end

  def show
    location = Location.find(params["id"])
    render json: location, status: 200
  end
end
