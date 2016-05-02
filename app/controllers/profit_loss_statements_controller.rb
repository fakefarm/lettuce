class ProfitLossStatementsController < ApplicationController
  before_action :set_profit_loss_statement, only: [:show, :edit, :update, :destroy]

  def index
    @profit_loss_statements = ProfitLossStatement.all
  end

  def show
    @expenses = Expense.all.group_by(&:book)
    @total_expenses = Expense.sum(:budget)
    @streams = Stream.all.group_by(&:equity)
    @total_streams = Stream.sum(:amount)
    @liabilities = Liability.all
    @total_liabilities = Liability.sum(:minimum_payment)
    @total_outflow = @total_liabilities + @total_expenses
    @difference = @total_streams - @total_outflow
    @padding = ((@difference.to_f / @total_streams.to_f).round(2) * 100)
  end

  def new
    @profit_loss_statement = ProfitLossStatement.new
  end

  def edit
  end

  def create
    @profit_loss_statement = ProfitLossStatement.new(profit_loss_statement_params)

    respond_to do |format|
      if @profit_loss_statement.save
        format.html { redirect_to @profit_loss_statement, notice: 'Profit loss statement was successfully created.' }
        format.json { render :show, status: :created, location: @profit_loss_statement }
      else
        format.html { render :new }
        format.json { render json: @profit_loss_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profit_loss_statement.update(profit_loss_statement_params)
        format.html { redirect_to @profit_loss_statement, notice: 'Profit loss statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @profit_loss_statement }
      else
        format.html { render :edit }
        format.json { render json: @profit_loss_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profit_loss_statement.destroy
    respond_to do |format|
      format.html { redirect_to profit_loss_statements_url, notice: 'Profit loss statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_profit_loss_statement
      @profit_loss_statement = ProfitLossStatement.find(params[:id])
    end

    def profit_loss_statement_params
      params.require(:profit_loss_statement).permit(:timeline, :user_id)
    end
end
