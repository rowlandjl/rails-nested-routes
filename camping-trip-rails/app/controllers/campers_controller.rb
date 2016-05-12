class CampersController < ApplicationController

  def index
    if params.has_key?("campsite_id")
      @title = "Campers bunking in " + Campsite.find(params[:campsite_id]).name
      @campers = Campsite.find(params[:campsite_id]).campers
    else
      @title = "All Campers:"
      @campers = Camper.all
    end
  end
end
