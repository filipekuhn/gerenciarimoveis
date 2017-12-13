class Users::DashboardController < Users::BaseController
  def index
    @properties = Property.where(user_id: current_user)
  end
end
