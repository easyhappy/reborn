module ApplicationHelper
  def header_menu
    contents_tag :ul do |contents|
      contents << content_tag(:li) do
        link_to '首　页', '/'
      end
      contents << content_tag(:li) do
        link_to '关于我们'
      end
    end
  end
end
