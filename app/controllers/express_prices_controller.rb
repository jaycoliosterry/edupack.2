class ExpressPricesController < ApplicationController
  before_action :set_express_price, only: [:show, :edit, :update, :destroy]

  # GET /express_prices
  # GET /express_prices.json
  def index
    @express_prices = ExpressPrice.all
  end

  # GET /express_prices/1
  # GET /express_prices/1.json
  def show
  end

  # GET /express_prices/new
  def new
    @express_price = ExpressPrice.new
  end

  # GET /express_prices/1/edit
  def edit
  end

  # POST /express_prices
  # POST /express_prices.json
  def create
    @express_price = ExpressPrice.new(express_price_params)

    respond_to do |format|
      if @express_price.save
        format.html { redirect_to @express_price, notice: 'Express price was successfully created.' }
        format.json { render :show, status: :created, location: @express_price }
      else
        format.html { render :new }
        format.json { render json: @express_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /express_prices/1
  # PATCH/PUT /express_prices/1.json
  def update
    respond_to do |format|
      if @express_price.update(express_price_params)
        format.html { redirect_to @express_price, notice: 'Express price was successfully updated.' }
        format.json { render :show, status: :ok, location: @express_price }
      else
        format.html { render :edit }
        format.json { render json: @express_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /express_prices/1
  # DELETE /express_prices/1.json
  def destroy
    @express_price.destroy
    respond_to do |format|
      format.html { redirect_to express_prices_url, notice: 'Express price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_express_price
      @express_price = ExpressPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def express_price_params
      params.require(:express_price).permit(:weight, :zone1, :zone2, :zone3, :zone4, :zone5, :zone6, :zone7, :zone8, :zone9, :zone10, :zone11, :zone12, :zone13)
    end
end
