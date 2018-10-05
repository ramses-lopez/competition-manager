class RootController < ApplicationController
  def index
    @matches = Match.all
  end
end
