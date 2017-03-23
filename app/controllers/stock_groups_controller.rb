class StockGroupsController < ApplicationController
  before_action :set_stock_group, only: [:show, :edit, :update, :destroy]

  # GET /stock_groups
  # GET /stock_groups.json
  def index
    @stock_groups = StockGroup.all
  end

  # GET /stock_groups/1
  # GET /stock_groups/1.json
  def show
  end

  # GET /stock_groups/new
  def new
    @stock_group = StockGroup.new
  end

  # GET /stock_groups/1/edit
  def edit
  end

  # POST /stock_groups
  # POST /stock_groups.json
  def create
    @stock_group = StockGroup.new(stock_group_params)

    respond_to do |format|
      if @stock_group.save
        format.html { redirect_to @stock_group, notice: 'Stock group was successfully created.' }
        format.json { render :show, status: :created, location: @stock_group }
      else
        format.html { render :new }
        format.json { render json: @stock_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_groups/1
  # PATCH/PUT /stock_groups/1.json
  def update
    respond_to do |format|
      if @stock_group.update(stock_group_params)
        format.html { redirect_to @stock_group, notice: 'Stock group was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_group }
      else
        format.html { render :edit }
        format.json { render json: @stock_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_groups/1
  # DELETE /stock_groups/1.json
  def destroy
    @stock_group.destroy
    respond_to do |format|
      format.html { redirect_to stock_groups_url, notice: 'Stock group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_group
      @stock_group = StockGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_group_params
      params.require(:stock_group).permit(:name, :description, :account_id)
    end
end
