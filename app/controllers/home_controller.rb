class HomeController < ApplicationController
  def index
    render '/index'
  end

  def admin
    render '/test', :layout => 'admin'
  end
end