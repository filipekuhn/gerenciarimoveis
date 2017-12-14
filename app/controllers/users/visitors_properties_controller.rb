class Users::VisitorsPropertiesController < Users::BaseController

  def show
    @title = "Lista de interessados"
    @visitors_property = VisitorsProperty.where(property_id: Property.select("id").where(user_id: current_user)).order(created_at: :desc).paginate(:page => params[:page], :per_page => 10)
  end

end
