class ApplicationController < ActionController::Base
  protect_from_forgery
  add_breadcrumb '苏州开泰再生资源有限公司', :root_path
end
