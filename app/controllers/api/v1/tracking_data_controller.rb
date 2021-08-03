class Api::V1::TrackingDataController < ApplicationController
  def index
    if params[:source_id].present?
      tracking_data = TrackingDatum.where(source_id: params[:source_id])
      render json: tracking_data.pluck(:data)
    else
      render json: { message: "required params are missing" }, status: 400
    end
  end
end
