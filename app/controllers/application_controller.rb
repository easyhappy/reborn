class ApplicationController < ActionController::Base
  protect_from_forgery
  add_breadcrumb I18n.t('company_name'), :root_path
end
