class HomeController < ApplicationController
  def index
    @users_properties = Users::Property.all
  end

  def rent
    @title = "Imóveis para Alugar"
  	@users_properties = Users::Property.where(flag: "Alugar")
  end

  def show
    @users_property = Users::Property.find()
  end
end
