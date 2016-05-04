class BalanceSheetsController < ApplicationController
  before_action :set_balance_sheet, only: [:show, :edit, :update, :destroy]

  def index
    @balance_sheets = BalanceSheet.all
  end

  def show
    @asset_balance = Asset.sum(:balance)

    @equities_balance = Equity.sum(:current_balance)
    @equities = Equity.all

    @total_liabilities = Liability.sum(:current_balance)
    @liabilities = Liability.all
  end

  def new
    @balance_sheet = BalanceSheet.new
  end

  def edit
  end

  def create
    @balance_sheet = BalanceSheet.new(balance_sheet_params)

    respond_to do |format|
      if @balance_sheet.save
        format.html { redirect_to @balance_sheet, notice: 'Balance sheet was successfully created.' }
        format.json { render :show, status: :created, location: @balance_sheet }
      else
        format.html { render :new }
        format.json { render json: @balance_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @balance_sheet.update(balance_sheet_params)
        format.html { redirect_to @balance_sheet, notice: 'Balance sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @balance_sheet }
      else
        format.html { render :edit }
        format.json { render json: @balance_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @balance_sheet.destroy
    respond_to do |format|
      format.html { redirect_to balance_sheets_url, notice: 'Balance sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_balance_sheet
      @balance_sheet = BalanceSheet.find(params[:id])
    end

    def balance_sheet_params
      params.require(:balance_sheet).permit(:timeline, :user_id)
    end
end
