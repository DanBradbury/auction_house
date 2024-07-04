class PawnsController < ApplicationController
  def index
    @pawn = Pawn.create(name: "FAKER", user_id: Current.user.id)
  end
end
