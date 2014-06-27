class HomeController < ApplicationController
  def index
    render '/index'
  end

  def contact_us
    add_breadcrumb I18n.t("contact_us")
  end
end