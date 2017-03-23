class OrderPackPackagesController < ApplicationController
  before_action :set_order_pack_package, only: [:show, :edit, :update, :destroy]

  # GET /order_pack_packages
  # GET /order_pack_packages.json
  def index
    @order_pack_packages = OrderPackPackage.all
  end

  # GET /order_pack_packages/1
  # GET /order_pack_packages/1.json
  def show
  end

  # GET /order_pack_packages/new
  def new
    @order_pack_package = OrderPackPackage.new
  end

  # GET /order_pack_packages/1/edit
  def edit
  end

  # POST /order_pack_packages
  # POST /order_pack_packages.json
  def create
    @order_pack_package = OrderPackPackage.new(order_pack_package_params)

    respond_to do |format|
      if @order_pack_package.save
        format.html { redirect_to @order_pack_package, notice: 'Order pack package was successfully created.' }
        format.json { render :show, status: :created, location: @order_pack_package }
      else
        format.html { render :new }
        format.json { render json: @order_pack_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_pack_packages/1
  # PATCH/PUT /order_pack_packages/1.json
  def update
    respond_to do |format|
      if @order_pack_package.update(order_pack_package_params)
        format.html { redirect_to @order_pack_package, notice: 'Order pack package was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_pack_package }
      else
        format.html { render :edit }
        format.json { render json: @order_pack_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_pack_packages/1
  # DELETE /order_pack_packages/1.json
  def destroy
    @order_pack_package.destroy
    respond_to do |format|
      format.html { redirect_to order_pack_packages_url, notice: 'Order pack package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_pack_package
      @order_pack_package = OrderPackPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_pack_package_params
      params.require(:order_pack_package).permit(:origin, :destination, :status, :history, :waybill, :total_pieces, :piece, :order_id, :order_pack_id)
    end
end
