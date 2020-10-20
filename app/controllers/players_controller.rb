class PlayersController < ApplicationController

  def index
    @players = Player.paginate(:page => params[:page], :per_page => 50)
  end

  def show
    @player = Player.find(params[:id])
  end

  # Searches for players based on keywords returned by the form
  def search
    # Recall that '%' represents wildcard in SQL
    search_by_keywords = "%#{params[:keywords]}%"

    # @returned_players will be shared with /players/search.html.erb
    @returned_players = Player.where("name LIKE ?", search_by_keywords).paginate(:page => params[:page], :per_page =>  50)
  end
end
