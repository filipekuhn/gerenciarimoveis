class PropertiesController < ApplicationController

  # GET /users/properties/1
  def show
    @property = Property.find(params[:id])
  end

end
