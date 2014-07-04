class Admin::CompaniesController < Admin::BaseController
  def show
    @company = Company.where(:id => params[:id]).first
    render "show_#{@company.key}"
  end

  def edit
    @company = Company.where(:id => params[:id]).first
    render "edit_#{@company.key}"
  end

  def update
    @company = Company.where(:id => params[:id]).first
    @company.update_attributes(permit_params)
    redirect_to admin_company_path(@company)
  end

  private
  def permit_params
    params.require(:company).permit(:value)
  end
end