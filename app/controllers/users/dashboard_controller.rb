class Users::DashboardController < Users::BaseController
  def index
    @properties = Property.where(user_id: current_user).paginate(:page => params[:page], :per_page => 12).order(updated_at: :desc)
  end
end
