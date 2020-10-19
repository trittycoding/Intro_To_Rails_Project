class PlayersController < ApplicationController

  def index
    @players = Player.paginate(:page => params[:page], :per_page => 50)
  end

  def show
    @player = Player.find(params[:id])
  end

end
