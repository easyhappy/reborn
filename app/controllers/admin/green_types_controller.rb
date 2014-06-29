class Admin::GreenTypesController < Admin::BaseController
  def index
    @green_types = GreenType.all
  end

  def new
    @green_type = GreenType.new
  end

  def create
    @green_type = GreenType.new(permit_params)
    if @green_type.save
      redirect_to admin_green_types_path
    else
      render :new
    end
  end

  def edit
    @green_type = GreenType.where(:_id => params[:id]).first
  end

  def update
    @green_type = GreenType.where(:_id => params[:id]).first
    if @green_type.update_attributes(permit_params)
      redirect_to admin_green_types_path
    else
      render :edit
    end
  end

  def destroy
    @green_type = GreenType.where(:_id => params[:id]).first
    @green_type.delete
    redirect_to admin_green_types_path
  end

  private
  def permit_params
    params.require(:green_type).permit(:name)
  end
end