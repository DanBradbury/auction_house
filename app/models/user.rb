class User < ApplicationRecord
  has_many :messages

  def avatar_image
    if race == "human"
      "human1.png"
    else
      "horse1.png"
    end
  end
  class << self
    def races
      ["human", "elf", "rat"]
    end
  end
end
