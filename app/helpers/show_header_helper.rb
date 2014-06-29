module ShowHeaderHelper
  def show_index_header prefix, model_type
    model_types = model_type.to_s.pluralize
    headers = []
    headers << [I18n.t("header.#{model_types}")]
    headers << [I18n.t("header.new_#{model_type}"), send("new_admin_#{model_type}_path")]
    show_common_header headers
  end

  def show_new_header prefix, model_type
    model_types = model_type.to_s.pluralize
    headers = []
    headers << [I18n.t("header.new_#{model_type}")]
    headers << [I18n.t("header.#{model_types}"), send("admin_#{model_types}_path")]
    show_common_header headers
  end

  def show_edit_header prefix, model_type
    model_types = model_type.to_s.pluralize
    headers = []
    headers << [I18n.t("header.edit_#{model_type}")]
    headers << [I18n.t("header.#{model_types}"), send("admin_#{model_types}_path")]
    show_common_header headers
  end

  private
  def show_common_header headers
    contents_tag :div, :class => :well do |contents|
      headers.each do |header|
        if header.size == 1
          contents << content_tag(:span) do
            content_tag :h4, header[0], :style => "display: inline-block;margin-left:5px" 
          end
        else
          contents << content_tag(:span) do
            link_to header[0], header[1], :class => "btn btn-primary pull-right"
          end
        end
      end
    end
  end
end