class KindsController < ApplicationController
  before_action :set_kind, only: [:show, :edit, :update, :destroy]

  def new
    @kind = Kind.new
  end

  def create
    @kind = Kind.create(kind_params)

    if @kind.errors.empty?
      redirect_to @kind
    else
      render "new"
    end
  end

  def show
  end

  def index
    @kinds = Kind.all
  end

  def edit
  end

  def update
  	@kind.update_attributes(kind_params)

  	if @kind.errors.empty?
      redirect_to @kind
    else
      render "edit"
    end
  end

  def destroy
  	@kind.destroy
  	redirect_to kinds_path
  end

  private

  def kind_params
    params.require(:kind).permit(:name)
  end

  def set_kind
    @kind = Kind.find(params[:id])
  end

end
