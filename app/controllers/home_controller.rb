class HomeController < ApplicationController
  def index
    @title = "Gerenciar Imóveis"
    @users_properties = Users::Property.paginate(:page => params[:page], :per_page => 3)
  end

  def rent
    @title = "Gerenciar Imóveis - Locação"
  	@users_properties = Users::Property.where(flag: "Alugar").paginate(:page => params[:page], :per_page => 3)
  end

  def sale
    @title = "Gerenciar Imóveis - Venda"
  	@users_properties = Users::Property.where(flag: "Vender")
  end
end
