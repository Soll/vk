class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)

    if @item.errors.empty?
      redirect_to @item
    else
      render "new"
    end
  end

  def show
  end

  def index
    @items = Item.all
  end

  def edit
  end

  def update
  	@item.update_attributes(item_params)

  	if @item.errors.empty?
      redirect_to @item
    else
      render "edit"
    end
  end

  def destroy
  	@item.destroy
  	redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
