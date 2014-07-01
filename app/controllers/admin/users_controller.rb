class Admin::UsersController < Admin::BaseController
  before_filter :need_super_admin, :only => [:add, :cancel]
  def index
    @users = User.all
  end

  def add
    @user = User.where(:id => params[:user_id]).first
    @user.role = 1
    @user.save
    redirect_to admin_users_path
  end

  def cancel
    @user = User.where(:id => params[:user_id]).first
    @user.role = 10
    @user.save
    redirect_to admin_users_path
  end

  private
  def need_super_admin
    unless current_user.super_admin?
      flash[:notice] = "您没有权限操作"
      redirect_to admin_users_path
      return false
    end
  end
end