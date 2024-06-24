class WorldsController < ApplicationController
  def index
    redirect_to "/setup" if Current.user.first_sign_in
    @messages = Message.all
    @days = []
  end
end
