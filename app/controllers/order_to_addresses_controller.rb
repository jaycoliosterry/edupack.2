class OrderToAddressesController < ApplicationController
  before_action :set_order_to_address, only: [:show, :edit, :update, :destroy]

  # GET /order_to_addresses
  # GET /order_to_addresses.json
  def index
    @order_to_addresses = OrderToAddress.all
  end

  # GET /order_to_addresses/1
  # GET /order_to_addresses/1.json
  def show
  end

  # GET /order_to_addresses/new
  def new
    @order_to_address = OrderToAddress.new
  end

  # GET /order_to_addresses/1/edit
  def edit
  end

  # POST /order_to_addresses
  # POST /order_to_addresses.json
  def create
    @order_to_address = OrderToAddress.new(order_to_address_params)

    respond_to do |format|
      if @order_to_address.save
        format.html { redirect_to @order_to_address, notice: 'Order to address was successfully created.' }
        format.json { render :show, status: :created, location: @order_to_address }
      else
        format.html { render :new }
        format.json { render json: @order_to_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_to_addresses/1
  # PATCH/PUT /order_to_addresses/1.json
  def update
    respond_to do |format|
      if @order_to_address.update(order_to_address_params)
        format.html { redirect_to @order_to_address, notice: 'Order to address was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_to_address }
      else
        format.html { render :edit }
        format.json { render json: @order_to_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_to_addresses/1
  # DELETE /order_to_addresses/1.json
  def destroy
    @order_to_address.destroy
    respond_to do |format|
      format.html { redirect_to order_to_addresses_url, notice: 'Order to address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_to_address
      @order_to_address = OrderToAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_to_address_params
      params.fetch(:order_to_address, {})
    end
end
