module ApplicationHelper
  def header_menu
    contents_tag :ul do |contents|
      contents << content_tag(:li) do
        link_to '首　页', '/'
      end
      contents << content_tag(:li) do
        link_to '关于我们'
      end
      contents << content_tag(:li) do
        link_to '联系我们', '/contact_us'
      end

      if current_user.present?
        contents << content_tag(:li, :class => :pull_right) do
          link_to '退出', destroy_user_session_path, :method => :delete
        end
      else
        contents << content_tag(:li, :class => :pull_right) do
          link_to '注册', '/users/sign_up'
        end
        contents << content_tag(:li, :class => :pull_right) do
          link_to '登录', '/users/sign_in'
        end
      end
    end
  end
end
