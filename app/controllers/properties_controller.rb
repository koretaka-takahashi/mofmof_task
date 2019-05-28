class PropertiesController < ApplicationController
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
end
