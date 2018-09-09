module ApplicationHelper

  def has_navbar?
    request.path.include?("users") || request.path.include?("deputies")
  end
end
