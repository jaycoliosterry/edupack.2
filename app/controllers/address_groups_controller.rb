class AddressGroupsController < ApplicationController
  before_action :set_address_group, only: [:show, :edit, :update, :destroy]

  # GET /address_groups
  # GET /address_groups.json
  def index
    @address_groups = AddressGroup.all
  end

  # GET /address_groups/1
  # GET /address_groups/1.json
  def show
  end

  # GET /address_groups/new
  def new
    @address_group = AddressGroup.new
  end

  # GET /address_groups/1/edit
  def edit
  end

  # POST /address_groups
  # POST /address_groups.json
  def create
    @address_group = AddressGroup.new(address_group_params)

    respond_to do |format|
      if @address_group.save
        format.html { redirect_to @address_group, notice: 'Address group was successfully created.' }
        format.json { render :show, status: :created, location: @address_group }
      else
        format.html { render :new }
        format.json { render json: @address_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_groups/1
  # PATCH/PUT /address_groups/1.json
  def update
    respond_to do |format|
      if @address_group.update(address_group_params)
        format.html { redirect_to @address_group, notice: 'Address group was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_group }
      else
        format.html { render :edit }
        format.json { render json: @address_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_groups/1
  # DELETE /address_groups/1.json
  def destroy
    @address_group.destroy
    respond_to do |format|
      format.html { redirect_to address_groups_url, notice: 'Address group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_group
      @address_group = AddressGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_group_params
      params.require(:address_group).permit(:name, :description, :account_id)
    end
end
