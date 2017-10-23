class Users::PropertiesController < Users::BaseController
  before_action :set_users_property, only: [:show, :edit, :update, :destroy]

  # GET /users/properties
  def index
    #@users_properties = Users::Property.all
    @users_properties = Users::Property.where(user_id: current_user)
    @title = "Gerenciar Imóveis"
  end

  # GET /users/properties/1
  def show
  end

  # GET /users/properties/new
  def new
    @users_property = Users::Property.new
    @title = "Cadastrar Imóvel"
  end

  # GET /users/properties/1/edit
  def edit
  end

  # POST /users/properties
  def create
    @users_property = Users::Property.new(users_property_params)
    @users_property.user_id = current_user.id
    if @users_property.save
      redirect_to @users_property, notice: 'Property was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/properties/1
  def update
    if @users_property.update(users_property_params)
      redirect_to @users_property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/properties/1
  def destroy
    @users_property.destroy
    redirect_to users_properties_url, notice: 'Property was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_property
      @users_property = Users::Property.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def users_property_params
      params.require(:users_property).permit(:title, :description, :address, :price, :flag, :image)
    end
end
