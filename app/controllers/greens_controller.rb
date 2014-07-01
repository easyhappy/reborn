class GreensController < ApplicationController
  def index
    @green_types = GreenType.all
    @greens = Green.where(:green_type_id => params[:type_id] ||@green_types.first.id).paginate(:page => params[:page] || 1, :per_page => 10)
  end

  def show
    @green = Green.where(:id => params[:id]).first
  end
end