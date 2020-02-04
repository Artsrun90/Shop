class CustomersController < ApplicationController
  before_action :authenticate_customer, only: [:index, :update]
  before_action :authorize,             only: [:update]
  before_action :authorize_as_admin,    only: [:destroy, :update, :show]
  
  # GET /customers
  def index
    # @customers = Customer.all
    current_customer.update!(last_login: Time.now)
    render json: current_customer
   
  end

  
  # GET /customers/1
  def show
    @customer = Customer.all
    render json: @customer    
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  def destroy
    @customer = Customer.find(params[:id])
    if @customer.destroy
      render json: { status: 200, msg: 'Customer has been deleted.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_customer
    #     @customer = Customer.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:email, :password, :password_confirmation, :customerName, :contactName, :address, :city, :postalCode, :country)
    end

    def authorize
      return head(:unauthorized) unless current_customer && current_customer.can_modify_customer?(params[:id])
    end

end
