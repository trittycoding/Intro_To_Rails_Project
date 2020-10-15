class TeamsController < ApplicationController
  def index
    @teams = Team.all.order("name ASC")
  end

  def show
    @team = Team.find(params[:id])
  end
end
