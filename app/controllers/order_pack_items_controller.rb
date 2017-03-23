class OrderPackItemsController < ApplicationController
  before_action :set_order_pack_item, only: [:show, :edit, :update, :destroy]

  # GET /order_pack_items
  # GET /order_pack_items.json
  def index
    @order_pack_items = OrderPackItem.all
  end

  # GET /order_pack_items/1
  # GET /order_pack_items/1.json
  def show
  end

  # GET /order_pack_items/new
  def new
    @order_pack_item = OrderPackItem.new
  end

  # GET /order_pack_items/1/edit
  def edit
  end

  # POST /order_pack_items
  # POST /order_pack_items.json
  def create
    @order_pack_item = OrderPackItem.new(order_pack_item_params)

    respond_to do |format|
      if @order_pack_item.save
        format.html { redirect_to @order_pack_item, notice: 'Order pack item was successfully created.' }
        format.json { render :show, status: :created, location: @order_pack_item }
      else
        format.html { render :new }
        format.json { render json: @order_pack_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_pack_items/1
  # PATCH/PUT /order_pack_items/1.json
  def update
    respond_to do |format|
      if @order_pack_item.update(order_pack_item_params)
        format.html { redirect_to @order_pack_item, notice: 'Order pack item was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_pack_item }
      else
        format.html { render :edit }
        format.json { render json: @order_pack_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_pack_items/1
  # DELETE /order_pack_items/1.json
  def destroy
    @order_pack_item.destroy
    respond_to do |format|
      format.html { redirect_to order_pack_items_url, notice: 'Order pack item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_pack_item
      @order_pack_item = OrderPackItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_pack_item_params
      params.require(:order_pack_item).permit(:quantity, :stock_id, :order_id)
    end
end
