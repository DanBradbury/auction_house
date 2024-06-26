class User < ApplicationRecord
  has_many :messages

  def avatar_image
    "#{race.downcase}.png"
  end

  class << self
    def races
      ["Pig", "Elephant", "Giraffe", "Monkey"]
    end
  end
end
