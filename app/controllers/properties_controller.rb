class PropertiesController < ApplicationController
  before_action :set_property, only:[:show, :edit, :update]
  
  def index
    @properties = Property.all.order(created_at: "DESC")
  end

  def new
    @property = Property.new
    @property.nearest_stations.build
  end

  def create
    @property = Property.create(property_params)
    redirect_to property_path(@property.id)
  end

  def show
  end
    
  def edit
  end

  def update
    if @property.update(update_property_params)
      redirect_to property_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end  

  def property_params
    params.require(:property).permit(
      :name, 
      :price, 
      :address, 
      :age, 
      :note,
       nearest_stations_attributes: [:line, :station, :walking_minutes]
      )
  end  

  def update_property_params
    params.require(:property).permit(
      :name, 
      :price, 
      :address, 
      :age, 
      :note,
       nearest_stations_attributes: [:line, :station, :walking_minutes, :id]
      )
  end  
end
