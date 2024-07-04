class User < ApplicationRecord
  has_many :messages
  has_many :pawns

  def avatar_image
    "#{race.downcase}.png"
  end

  class << self
    def races
      ["Pig", "Elephant", "Giraffe", "Monkey"]
    end
  end
end
