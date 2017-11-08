class Users::DashboardController < Users::BaseController
  def index
    @users_properties = Users::Property.where(user_id: current_user)
  end
end
