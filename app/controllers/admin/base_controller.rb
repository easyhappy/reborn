class Admin::BaseController < ApplicationController
  before_filter :access_denied
  layout 'admin'
  def index
    render '/admin/index'
  end

  private
  def access_denied
    unless current_user.present? and current_user.admin?
      flash[:notice] = "您没有权限访问，请登录并联系管理员添加权限！！"
      redirect_to root_path
    end
  end
end