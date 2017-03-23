class AccountAddressesController < ApplicationController
  before_action :set_account_address, only: [:show, :edit, :update, :destroy]

  # GET /account_addresses
  # GET /account_addresses.json
  def index
    @account_addresses = AccountAddress.all
  end

  # GET /account_addresses/1
  # GET /account_addresses/1.json
  def show
  end

  # GET /account_addresses/new
  def new
    @account_address = AccountAddress.new
  end

  # GET /account_addresses/1/edit
  def edit
  end

  # POST /account_addresses
  # POST /account_addresses.json
  def create
    @account_address = AccountAddress.new(account_address_params)

    respond_to do |format|
      if @account_address.save
        format.html { redirect_to @account_address, notice: 'Account address was successfully created.' }
        format.json { render :show, status: :created, location: @account_address }
      else
        format.html { render :new }
        format.json { render json: @account_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_addresses/1
  # PATCH/PUT /account_addresses/1.json
  def update
    respond_to do |format|
      if @account_address.update(account_address_params)
        format.html { redirect_to @account_address, notice: 'Account address was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_address }
      else
        format.html { render :edit }
        format.json { render json: @account_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_addresses/1
  # DELETE /account_addresses/1.json
  def destroy
    @account_address.destroy
    respond_to do |format|
      format.html { redirect_to account_addresses_url, notice: 'Account address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_address
      @account_address = AccountAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_address_params
      params.require(:account_address).permit(:address1, :address2, :address3, :address4, :country, :postcode, :name, :email, :telephone, :account_id)
    end
end
