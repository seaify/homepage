class UserVisitController < ApplicationController
  def show
    @visits_grid = initialize_grid(Visit)
  end
end
