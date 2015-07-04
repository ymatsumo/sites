class SmokingAreaController < ApplicationController
  def index
    @smoking_areas = SmokingArea.all

    @hash = Gmaps4rails.build_markers(@smoking_areas) do |smoking_area, marker|
      marker.lat smoking_area.latitude
      marker.lng smoking_area.longitude
      marker.infowindow smoking_area.name
      marker.json({title: smoking_area.name})
    end
  end
end
