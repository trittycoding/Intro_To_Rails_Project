class HomeController < ApplicationController
  def index
    @roles = Role.all
    @players = Player.all
  end
end
