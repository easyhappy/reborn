class Admin::GreensController < Admin::BaseController
  def index
    @greens = Green.all
  end

  def new
    @green = Green.new
  end

  def create
    @green = Green.new(permit_params)
    if @green.save
      redirect_to admin_greens_path
    else
      render :new
    end
  end

  def edit
    @green = Green.where(:_id => params[:id]).first
  end

  def update
    @green = Green.where(:_id => params[:id]).first
    if @green.update_attributes(permit_params)
      redirect_to admin_greens_path
    else
      render :edit
    end
  end

  def destroy
    @green = Green.where(:_id => params[:id]).first
    @green.delete
    redirect_to admin_greens_path
  end

  private
  def permit_params
    params.require(:green).permit(:name, :content, :green_type_id)
  end
end