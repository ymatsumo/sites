class SmokingAreasController < ApplicationController
  def index
    @smoking_areas = SmokingArea.all

    @hash = Gmaps4rails.build_markers(@smoking_areas) do |smoking_area, marker|
      marker.lat smoking_area.latitude
      marker.lng smoking_area.longitude
      marker.infowindow smoking_area.name
      marker.json({title: smoking_area.name})
    end
  end

  def list
    @smoking_areas = SmokingArea.all
  end

  def show
    @smoking_area = SmokingArea.find(params[:id])
  end

  def new
    @smoking_area = SmokingArea.new
  end

  def create
    @smoking_area = SmokingArea.new(smoking_area_params)

    if @smoking_area.save
      redirect_to :action => 'index'
    else
      render 'new'
    end
  end

  def edit
    @smoking_area = SmokingArea.find(params[:id])
  end

  def update
    @smoking_area = SmokingArea.find(params[:id])
    if @smoking_area.update(smoking_area_params)
      redirect_to smoking_area_url(@smoking_area)
    else
      render 'edit'
    end
  end

  def destroy
    @smoking_area = SmokingArea.find(params[:id])
    @smoking_area.destroy
    redirect_to :smoking_areas
  end

  private
  def smoking_area_params
    params.require(:smoking_area).permit(:name, :address, :latitude, :longitude)
  end
end
