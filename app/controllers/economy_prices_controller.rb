class EconomyPricesController < ApplicationController
  before_action :set_economy_price, only: [:show, :edit, :update, :destroy]

  # GET /economy_prices
  # GET /economy_prices.json
  def index
    @economy_prices = EconomyPrice.all
  end

  # GET /economy_prices/1
  # GET /economy_prices/1.json
  def show
  end

  # GET /economy_prices/new
  def new
    @economy_price = EconomyPrice.new
  end

  # GET /economy_prices/1/edit
  def edit
  end

  # POST /economy_prices
  # POST /economy_prices.json
  def create
    @economy_price = EconomyPrice.new(economy_price_params)

    respond_to do |format|
      if @economy_price.save
        format.html { redirect_to @economy_price, notice: 'Economy price was successfully created.' }
        format.json { render :show, status: :created, location: @economy_price }
      else
        format.html { render :new }
        format.json { render json: @economy_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /economy_prices/1
  # PATCH/PUT /economy_prices/1.json
  def update
    respond_to do |format|
      if @economy_price.update(economy_price_params)
        format.html { redirect_to @economy_price, notice: 'Economy price was successfully updated.' }
        format.json { render :show, status: :ok, location: @economy_price }
      else
        format.html { render :edit }
        format.json { render json: @economy_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economy_prices/1
  # DELETE /economy_prices/1.json
  def destroy
    @economy_price.destroy
    respond_to do |format|
      format.html { redirect_to economy_prices_url, notice: 'Economy price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_economy_price
      @economy_price = EconomyPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def economy_price_params
      params.require(:economy_price).permit(:weight, :zone1, :zone2, :zone3, :zone4, :zone5, :zone6, :zone7, :zone8, :zone9, :zone10, :zone11, :zone12, :zone13)
    end
end
