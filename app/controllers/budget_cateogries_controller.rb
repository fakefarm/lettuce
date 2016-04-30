class BudgetCateogriesController < ApplicationController
  before_action :set_budget_cateogry, only: [:show, :edit, :update, :destroy]

  # GET /budget_cateogries
  # GET /budget_cateogries.json
  def index
    @budget_cateogries = BudgetCateogry.all
  end

  # GET /budget_cateogries/1
  # GET /budget_cateogries/1.json
  def show
  end

  # GET /budget_cateogries/new
  def new
    @budget_cateogry = BudgetCateogry.new
  end

  # GET /budget_cateogries/1/edit
  def edit
  end

  # POST /budget_cateogries
  # POST /budget_cateogries.json
  def create
    @budget_cateogry = BudgetCateogry.new(budget_cateogry_params)

    respond_to do |format|
      if @budget_cateogry.save
        format.html { redirect_to @budget_cateogry, notice: 'Budget cateogry was successfully created.' }
        format.json { render :show, status: :created, location: @budget_cateogry }
      else
        format.html { render :new }
        format.json { render json: @budget_cateogry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_cateogries/1
  # PATCH/PUT /budget_cateogries/1.json
  def update
    respond_to do |format|
      if @budget_cateogry.update(budget_cateogry_params)
        format.html { redirect_to @budget_cateogry, notice: 'Budget cateogry was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_cateogry }
      else
        format.html { render :edit }
        format.json { render json: @budget_cateogry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_cateogries/1
  # DELETE /budget_cateogries/1.json
  def destroy
    @budget_cateogry.destroy
    respond_to do |format|
      format.html { redirect_to budget_cateogries_url, notice: 'Budget cateogry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_cateogry
      @budget_cateogry = BudgetCateogry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_cateogry_params
      params.require(:budget_cateogry).permit(:name, :tag, :note, :user_id, :family_id)
    end
end
