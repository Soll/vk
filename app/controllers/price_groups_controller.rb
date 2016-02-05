class PriceGroupsController < ApplicationController
  before_action :set_pg, only: [:show, :edit, :update, :destroy]

  def new
    @pg = PriceGroup.new
  end

  def create
    @pg = PriceGroup.create(pg_params)

    if @pg.errors.empty?
      redirect_to @pg
    else
      render "new"
    end
  end

  def show
  	@pgl = params[:pgl_id] ? @pg.price_group_lines.find(params[:pgl_id]) : @pg.price_group_lines.new
  end

  def index
    @pgs = PriceGroup.all
  end

  def edit
  end

  def update
  	@pg.update_attributes(pg_params)

  	if @pg.errors.empty?
      redirect_to @pg
    else
      render "edit"
    end
  end

  def destroy
  	@pg.destroy
  	redirect_to price_groups_path
  end

  private

  def pg_params
    params.require(:price_group).permit(:name)
  end

  def set_pg
    @pg = PriceGroup.find(params[:id])
  end

end
