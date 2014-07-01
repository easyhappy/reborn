module ApplicationHelper
  def header_menu
    contents_tag :ul do |contents|
      contents << content_tag(:li) do
        link_to '首　页', '/'
      end
      contents << content_tag(:li) do
        link_to '资源与环保', '/greens'
      end
      contents << content_tag(:li) do
        link_to '公司动态', '/company_news'
      end
      contents << content_tag(:li) do
        link_to '联系我们', '/contact_us'
      end

      contents << content_tag(:li) do
        link_to '给我们留言', '/messages/new'
      end

      if current_user.present?
        contents << content_tag(:li, :class => :pull_right) do
          link_to '退出', destroy_user_session_path, :method => :delete
        end
        if current_user.admin?
          contents << content_tag(:li, :class => :pull_right) do
            link_to '后台管理', '/admin'
          end
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
