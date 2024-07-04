class FightJob < ApplicationJob
  queue_as :fight

  def perform(user_id)
    Turbo::StreamsChannel.broadcast_append_to(
      :logs,
      target: "logs",
      partial: "shared/logs",
      locals: { thing: "thing" }
    )

    puts "STARTING"
    sleep 10
    Turbo::StreamsChannel.broadcast_append_to(
      :logs,
      target: "logs",
      partial: "shared/logs",
      locals: { thing: "more" }
    )
    puts "MORE"
    sleep 10
    puts "end"
  end
end
