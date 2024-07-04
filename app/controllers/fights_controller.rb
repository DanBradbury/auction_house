class FightsController < ApplicationController
  def trigger
    FightJob.perform_later(123)
    @thing = 123
  end
end
