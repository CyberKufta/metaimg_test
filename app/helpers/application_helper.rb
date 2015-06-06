module ApplicationHelper
  def full_title(title)
    base_title = "MetaImage"
    title.empty? ? "#{base_title}" : "#{title} | #{base_title}"
  end
end
