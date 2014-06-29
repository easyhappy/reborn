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
  end
end