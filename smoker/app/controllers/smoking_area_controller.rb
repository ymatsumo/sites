class SmokingAreaController < ApplicationController
  def index
    @smoking_areas = SmokingArea.all
  end
end
