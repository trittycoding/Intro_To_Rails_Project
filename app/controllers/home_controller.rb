class HomeController < ApplicationController
  def index
    @roles = Role.all
  end
end
