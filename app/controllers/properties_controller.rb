class PropertiesController < ApplicationController
  before_action :set_property, only:[:show, :edit, :update]
  
  def index
    @properties = Property.all.order(created_at: "DESC")
  end
  
  def create
    @property = Property.create(property_params)
    redirect_to root_path
  end
  
  def new
    @property = Property.new
    @property.nearest_stations.build
  end

  def edit
  end

  def show
  end

  def update
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
       nearest_stations_attributes: [:line,:station,:walking_minutes]
      )
  end  
end
