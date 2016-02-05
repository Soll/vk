class PriceGroupLinesController < ApplicationController
  before_action :set_pgl, only: [:edit, :update, :destroy]

  def new
    @pgl = PriceGroupLine.new
  end

  def create
    @pgl = PriceGroupLine.create(pgl_params)
    redirect_to price_group_path(@pgl.price_group_id)
  end

  def edit
  end

  def update
  	@pgl.update_attributes(pgl_params)
  	redirect_to price_group_path(@pgl.price_group_id)
  end

  def destroy
  	@pgl.destroy
  	redirect_to price_group_path(@pgl.price_group_id)
  end

  private

  def pgl_params
    params.require(:price_group_line).permit(:item_id, :price_group_id, :amount, :price)
  end

  def set_pgl
    @pgl = PriceGroupLine.find(params[:id])
  end
end
