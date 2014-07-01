class CompanyNewsController < ApplicationController
  def index
    add_breadcrumb '公司动态', '/company_news'
    @company_news = CompanyNews.paginate(:page => params[:page] || 1, :per_page => 10)
  end

  def show
    @company_news = CompanyNews.where(:id => params[:id]).first
  end
end