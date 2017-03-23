class OrderPacksController < ApplicationController
  before_action :set_order_pack, only: [:show, :edit, :update, :destroy]

  # GET /order_packs
  # GET /order_packs.json
  def index
    @order_packs = OrderPack.all
  end

  # GET /order_packs/1
  # GET /order_packs/1.json
  def show
  end

  # GET /order_packs/new
  def new
    @order_pack = OrderPack.new
  end

  # GET /order_packs/1/edit
  def edit
  end

  # POST /order_packs
  # POST /order_packs.json
  def create
    @order_pack = OrderPack.new(order_pack_params)

    respond_to do |format|
      if @order_pack.save
        format.html { redirect_to @order_pack, notice: 'Order pack was successfully created.' }
        format.json { render :show, status: :created, location: @order_pack }
      else
        format.html { render :new }
        format.json { render json: @order_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_packs/1
  # PATCH/PUT /order_packs/1.json
  def update
    respond_to do |format|
      if @order_pack.update(order_pack_params)
        format.html { redirect_to @order_pack, notice: 'Order pack was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_pack }
      else
        format.html { render :edit }
        format.json { render json: @order_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_packs/1
  # DELETE /order_packs/1.json
  def destroy
    @order_pack.destroy
    respond_to do |format|
      format.html { redirect_to order_packs_url, notice: 'Order pack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_pack
      @order_pack = OrderPack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_pack_params
      params.require(:order_pack).permit(:weight, :width, :length, :depth, :customs, :customs_detail, :description, :quantity, :customs_value, :cost, :order_id)
    end
end
