class CompanyNewsController < ApplicationController
  def index
    @company_news = CompanyNews.paginate(:page => params[:page] || 1, :per_page => 10)
  end

  def show
    @company_news = CompanyNews.where(:id => params[:id]).first
  end
end