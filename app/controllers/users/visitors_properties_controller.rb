class Users::VisitorsPropertiesController < Users::BaseController

  def show
    @title = "Lista de interessados"
    @visitors_property = VisitorsProperty.where(property_id: Property.select("id").where(user_id: current_user))
  end

end
