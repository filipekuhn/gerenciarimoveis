class HomeController < ApplicationController
  def index
    @title = "Gerenciar Imóveis"
    @properties = Property.paginate(:page => params[:page], :per_page => 12).order(updated_at: :desc)

    #@visitor_property = VisitorsProperty.where(property_id: @properties.ids).count

  end

  def rent
    @title = "Gerenciar Imóveis - Locação"
  	@users_properties = Property.where(flag: "Alugar").paginate(:page => params[:page], :per_page => 12).order(updated_at: :desc)
  end

  def sale
    @title = "Gerenciar Imóveis - Venda"
  	@users_properties = Property.where(flag: "Vender").paginate(:page => params[:page], :per_page => 12).order(updated_at: :desc)
  end
end
