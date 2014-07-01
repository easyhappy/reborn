module ShowBuilderExtensionHelper
end
module Showbuilder
  module Builders
    class ShowModelTableRowBuilder

      def show_delete_link_column(*methods)
        return show_header_column(methods) if is_header

        content = get_methods_text_value(model, methods)
        link_path = get_link_option(methods)

        content_tag :td do
          link_to content, link_path, :method => :delete
        end
      end

      def show_admin_link_column(*methods)
        return show_header_column(methods) if is_header
        return unless current_user.super_admin?
        if model.common_admin?
          return content_tag(:td) do
            link_to '取消管理员', admin_user_cancel_path(model), :method => :put, :class => 'btn btn-primary'
          end
        end
        unless model.admin?
          return content_tag(:td) do
            link_to '添加管理员', admin_user_add_path(model), :method => :put, :class => 'btn btn-primary'
          end
        end
        content_tag(:td)
      end
    end
    class ModelFormBuilder
      def show_kindeditor_input(method, options = {})
        options ||= {}
        input_options = options[:input] || {}

        self.show_method_shell(method, options) do
          self.kindeditor(method, input_options)
        end
      end
    end
    class ShowModelTableRowBuilder
      private
      def show_column_link(name, methods)
        link_option = get_link_option(methods)
        options = get_methods_option(methods, :link_options)
        link_to name, link_option, options
      end
    end
  end
end
