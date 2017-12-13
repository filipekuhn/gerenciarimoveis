class PropertiesController < ApplicationController

  # GET /users/properties/1
  def show
    @property = Property.find(params[:id])
    @pictures = @property.pictures

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
    end
  end

end
