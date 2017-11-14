class Admins::UsersController < Admins::BaseController
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admins_dashboard_path, notice: 'Property was successfully destroyed.'
  end
end
