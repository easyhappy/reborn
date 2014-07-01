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
