# frozen_string_literal: true

class PlaybookLinkComponent < ViewComponent::Base
  def initialize(text:, url:)
    @text = text
    @url = url
  end

  def css_classes
    classes = "list-item"
    classes += " active" if current_page?(@url)
    classes
  end
end
