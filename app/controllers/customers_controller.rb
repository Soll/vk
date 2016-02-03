class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)

    if @customer.errors.empty?
      redirect_to @customer
    else
      render "new"
    end
  end

  def show
    @location = params[:location_id] ? @customer.locations.find(params[:location_id]) : @customer.locations.new
  end

  def index
    @customers = Customer.all
  end

  def edit
  end

  def update
  	@customer.update_attributes(customer_params)

  	if @customer.errors.empty?
      redirect_to @customer
    else
      render "edit"
    end
  end

  def destroy
  	@customer.destroy
  	redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :adres, :phone, :comment, :kind_id)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

end
