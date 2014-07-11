require 'rails/generators/erb/scaffold/scaffold_generator'

class ShowbuilderScaffoldGenerator < Erb::Generators::ScaffoldGenerator
  source_root File.expand_path('../templates', __FILE__)
  def copy_view_files
    available_views.each do |view|
      filename = filename_with_extensions(view)
      template filename, File.join("app/views", controller_file_path, filename)
    end
  end

  hook_for :form_builder, :as => :scaffold

  protected
  def handler
    :slim
  end

  def available_views
    ['index', 'edit', 'show', 'new', '_form']
  end
end
