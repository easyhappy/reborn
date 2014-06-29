class GreensController < ApplicationController
  def index
    @green_types = GreenType.all
    @greens = Green.where(:green_type_id => params[:type_id] ||@green_types.first.id)
  end
end