class CompniesController < ApplicationController
  def index
    @compnies = Compny.all
  end
  
  def show
    @compny= Compny.find(params[:id])
  end
end
