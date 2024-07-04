class GeneralButton < ViewComponent::Base
  def initialize(link:, text:)
    @link = link
    @text = text
  end
end
