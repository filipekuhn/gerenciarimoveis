class HomeController < ApplicationController
  def index
    @title = "Gerenciar Imóveis"
    @properties = Property.paginate(:page => params[:page], :per_page => 6)
  

  end

  def rent
    @title = "Gerenciar Imóveis - Locação"
  	@users_properties = Property.where(flag: "Alugar").paginate(:page => params[:page], :per_page => 3)
  end

  def sale
    @title = "Gerenciar Imóveis - Venda"
  	@users_properties = Property.where(flag: "Vender").paginate(:page => params[:page], :per_page => 3)
  end
end
