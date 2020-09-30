class WelcomeController < ApplicationController
  caches_action :index, expires_in: 2.days


  def index
    @games ||= NflFacade.games(current_week)
  end

  def new
  end

  def update
    # code
  end

  def create
    # code
  end
end
