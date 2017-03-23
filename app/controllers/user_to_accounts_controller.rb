class UserToAccountsController < ApplicationController
  before_action :set_user_to_account, only: [:show, :edit, :update, :destroy]

  # GET /user_to_accounts
  # GET /user_to_accounts.json
  def index
    @user_to_accounts = UserToAccount.all
  end

  # GET /user_to_accounts/1
  # GET /user_to_accounts/1.json
  def show
  end

  # GET /user_to_accounts/new
  def new
    @user_to_account = UserToAccount.new
  end

  # GET /user_to_accounts/1/edit
  def edit
  end

  # POST /user_to_accounts
  # POST /user_to_accounts.json
  def create
    @user_to_account = UserToAccount.new(user_to_account_params)

    respond_to do |format|
      if @user_to_account.save
        format.html { redirect_to @user_to_account, notice: 'User to account was successfully created.' }
        format.json { render :show, status: :created, location: @user_to_account }
      else
        format.html { render :new }
        format.json { render json: @user_to_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_to_accounts/1
  # PATCH/PUT /user_to_accounts/1.json
  def update
    respond_to do |format|
      if @user_to_account.update(user_to_account_params)
        format.html { redirect_to @user_to_account, notice: 'User to account was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_to_account }
      else
        format.html { render :edit }
        format.json { render json: @user_to_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_to_accounts/1
  # DELETE /user_to_accounts/1.json
  def destroy
    @user_to_account.destroy
    respond_to do |format|
      format.html { redirect_to user_to_accounts_url, notice: 'User to account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_to_account
      @user_to_account = UserToAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_to_account_params
      params.require(:user_to_account).permit(:account_id, :user_id)
    end
end
