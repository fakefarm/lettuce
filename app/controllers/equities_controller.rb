class EquitiesController < ApplicationController
  before_action :set_equity, only: [:show, :edit, :update, :destroy]

  def index
    @equities = Equity.all
    @total = Equity.sum(:current_balance)
  end

  def show
    @stream = Stream.new
    @streams = Stream.where(equity_id: params[:id])
  end

  def new
    @equity = Equity.new
  end

  def edit
  end

  def create
    @equity = Equity.new(equity_params)

    respond_to do |format|
      if @equity.save
        format.html { redirect_to @equity, notice: 'Equity was successfully created.' }
        format.json { render :show, status: :created, location: @equity }
      else
        format.html { render :new }
        format.json { render json: @equity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @equity.update(equity_params)
        format.html { redirect_to @equity, notice: 'Equity was successfully updated.' }
        format.json { render :show, status: :ok, location: @equity }
      else
        format.html { render :edit }
        format.json { render json: @equity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @equity.destroy
    respond_to do |format|
      format.html { redirect_to equities_url, notice: 'Equity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_equity
      @equity = Equity.find(params[:id])
    end

    def equity_params
      params.require(:equity).permit(:starting_balance, :nickname, :bank_name, :user_id, :family_id)
    end
end
