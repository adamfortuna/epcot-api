module ApplicationHelper
  def nav_link(text, url, params = {})
    link_to text, url, params.merge({ :class => (current_page?(url) ? "ui-btn-active" : nil) })
  end
end
