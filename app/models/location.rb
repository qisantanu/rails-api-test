class Location < ApplicationRecord
  validates_presence_of :latitude, :longitude, :altitude, :temperatureC
end
