class Message < ApplicationRecord
  belongs_to :user

  def sent_at
    created_at.strftime("%m-%d-%Y")
  end

  def timestamp
    created_at.strftime("%R")
  end
end
