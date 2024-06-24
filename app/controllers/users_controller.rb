class UsersController < ApplicationController
  allow_no_auth only: [:create]

  def create
    user = User.find_or_create_by(name: params[:name])
    cookies.encrypted[:user_id] = user.id
    redirect_to "/worlds"
  end

  def update
    Current.user.update!(
      race: params[:user][:race],
      first_sign_in: false
    )
    redirect_to "/worlds"
  end

  def test
    ActionCable.server.broadcast("chat", {body: "hell"})
  end
end
