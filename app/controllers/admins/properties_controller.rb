class Admins::PropertiesController < Admins::BaseController

  def index
    @title = "Gerenciar Imóveis"
    @users_properties = Property.paginate(:page => params[:page], :per_page => 9)
  end

  def show
    @property = Property.find(params[:id])
    @pictures = @property.pictures

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
    end
  end

  # GET /admins/properties/1/edit
  def edit
  end

  # PATCH/PUT /admins/properties/1
  def update
    if @users_property.update(users_property_params)
      redirect_to @users_property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admins/properties/1
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    redirect_to admins_properties_url, notice: 'Property was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_property
      @users_property = Property.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def users_property_params
      params.require(:property).permit(:title, :description, :address, :price, :flag, :image)
    end
end
