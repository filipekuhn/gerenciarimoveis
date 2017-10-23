class HomeController < ApplicationController
  def index
  end

  def rent
    @title = "Imóveis para Alugar"
  	@users_properties = Users::Property.where(flag: "Alugar")
  end
end
