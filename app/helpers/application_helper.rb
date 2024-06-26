module ApplicationHelper
  def race_images
    User.races.map { |race| image_url "#{race.downcase}.png" }
  end
end
