class NavigationButton < ViewComponent::Base
  def initialize(link:, image:, text:)
    @link = link
    @image = image
    @text = text
  end
end
