class VisitorsPropertiesController < ApplicationController
  before_action :authenticate_visitor!
  layout 'users/layouts/application'

  # GET /users/properties/new
  def new
    @visitor_property = VisitorsProperty.new
  end

  # POST /users/properties
  def create
    @visitor_property = VisitorsProperty.new
    @visitor_property.property_id = params[:property_id]
    @visitor_property.visitor_id = current_visitor.id
    @visitor = Visitor.find(current_visitor.id)
    @user = User.where(id: Property.select("user_id").where(id: @visitor_property.property_id)).first
    @property = Property.where(id: @visitor_property.property_id).first

    if @visitor_property.save
      redirect_to property_path(@visitor_property.property_id), notice: 'Marcado interesse com sucesso.'

      UserMailer.user_email(@visitor, @user, @property).deliver_now
      UserMailer.visitor_email(@visitor, @property).deliver_now

    else
      render root_path, notice: 'Algo deu errado, por favor entre em contato com o administrador!'
    end
  end

  def visitor_property_params
    params.require(:visitors_properties).permit(:property_id)
  end
end
