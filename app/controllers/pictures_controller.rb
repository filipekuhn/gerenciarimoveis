class PicturesController < ApplicationController
  # GET /pictures
  # GET /pictures.json
  def index

    @property = Property.find(params[:property_id])

    @pictures = @property.pictures

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pictures }
    end
  end

  def show
    @picture = Picture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @picture }
    end
  end

end
