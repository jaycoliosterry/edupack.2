class StockAttachmentsController < ApplicationController
  before_action :set_stock_attachment, only: [:show, :edit, :update, :destroy]

  # GET /stock_attachments
  # GET /stock_attachments.json
  def index
    @stock_attachments = StockAttachment.all
  end

  # GET /stock_attachments/1
  # GET /stock_attachments/1.json
  def show
  end

  # GET /stock_attachments/new
  def new
    @stock_attachment = StockAttachment.new
  end

  # GET /stock_attachments/1/edit
  def edit
  end

  # POST /stock_attachments
  # POST /stock_attachments.json
  def create
    @stock_attachment = StockAttachment.new(stock_attachment_params)

    respond_to do |format|
      if @stock_attachment.save
        format.html { redirect_to @stock_attachment, notice: 'Stock attachment was successfully created.' }
        format.json { render :show, status: :created, location: @stock_attachment }
      else
        format.html { render :new }
        format.json { render json: @stock_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_attachments/1
  # PATCH/PUT /stock_attachments/1.json
  def update
    respond_to do |format|
      if @stock_attachment.update(stock_attachment_params)
        format.html { redirect_to @stock_attachment, notice: 'Stock attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_attachment }
      else
        format.html { render :edit }
        format.json { render json: @stock_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_attachments/1
  # DELETE /stock_attachments/1.json
  def destroy
    @stock_attachment.destroy
    respond_to do |format|
      format.html { redirect_to stock_attachments_url, notice: 'Stock attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_attachment
      @stock_attachment = StockAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_attachment_params
      params.require(:stock_attachment).permit(:stock_id, :url)
    end
end
