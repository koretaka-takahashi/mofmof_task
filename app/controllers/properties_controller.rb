class PropertiesController < ApplicationController
  before_action :set_property, only:[:show, :edit, :update]
  
  def index
    @properties = Property.all.order(created_at: "DESC")
  end
  
  def create
  end
  
  def new
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
end
