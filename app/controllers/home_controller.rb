class HomeController < ApplicationController
  def index
    @title = "Gerenciar Imóveis"
    @users_properties = Users::Property.all
  end

  def rent
    @title = "Gerenciar Imóveis - Locação"
  	@users_properties = Users::Property.where(flag: "Alugar")
  end

  def show
    @users_property = Users::Property.find()
  end
end
