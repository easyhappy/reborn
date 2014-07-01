class HomeController < ApplicationController
  def index
    @company_news = CompanyNews.limit(10)
  end

  def contact_us
    add_breadcrumb I18n.t("contact_us")
  end
end