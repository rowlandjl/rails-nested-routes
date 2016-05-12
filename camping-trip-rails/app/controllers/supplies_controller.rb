class SuppliesController < ApplicationController
  def index
    if params.has_key?("camper_id")
      @title = "Supplies Brought by " + Camper.find(params[:camper_id]).name
      @supplies = Camper.find(params[:camper_id]).supplies
    else
      @title = "All Supplies:"
      @supplies = Supply.all
    end
  end
end
