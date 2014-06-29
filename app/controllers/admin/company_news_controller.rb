class Admin::CompanyNewsController < Admin::BaseController
  def index
    @company_news = CompanyNews.all
  end

  def new
    @company_news = CompanyNews.new
  end

  def create
    @company_news = CompanyNews.new(permit_params)
    if @company_news.save
      redirect_to admin_company_news_index_path
    else
      render :new
    end
  end

  def edit
    @company_news = CompanyNews.where(:_id => params[:id]).first
  end

  def update
    @company_news = CompanyNews.where(:_id => params[:id]).first
    if @company_news.update_attributes(permit_params)
      redirect_to admin_company_news_index_path
    else
      render :edit
    end
  end

  def destroy
    @company_news = CompanyNews.where(:_id => params[:id]).first
    @company_news.delete
    redirect_to admin_company_news_index_path
  end

  private
  def permit_params
    params.require(:company_news).permit(:name, :content)
  end
end