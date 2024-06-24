class WelcomeController < ApplicationController
  allow_no_auth only: [:index, :sign_out]

  def index
    redirect_to "/worlds" if signed_in?
  end

  def sign_out
    cookies.delete :user_id
    Current.user = nil
    redirect_to root_url
  end

  def setup
  end

  def chat
    @message = Message.create!(
      body: params[:message],
      user_id: params[:sender]
    )
    Turbo::StreamsChannel.broadcast_append_to(
      :messages,
      target: "messages",
      partial: "shared/message",
      object: @message
    )
    # forcing a scroll down
    ActionCable.server.broadcast("chat", { body: params[:message], sender: params[:sender] })
  end
end
