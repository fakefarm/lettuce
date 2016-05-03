class HelpController < ApplicationController
  before_action :set_help, only: [:show, :edit, :update, :destroy]

  # GET /help
  # GET /help.json
  def index
    @help = Help.all
  end

  # GET /help/1
  # GET /help/1.json
  def show
  end

  # GET /help/new
  def new
    @help = Help.new
  end

  # GET /help/1/edit
  def edit
  end

  # POST /help
  # POST /help.json
  def create
    @help = Help.new(help_params)

    respond_to do |format|
      if @help.save
        format.html { redirect_to @help, notice: 'Help was successfully created.' }
        format.json { render :show, status: :created, location: @help }
      else
        format.html { render :new }
        format.json { render json: @help.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help/1
  # PATCH/PUT /help/1.json
  def update
    respond_to do |format|
      if @help.update(help_params)
        format.html { redirect_to @help, notice: 'Help was successfully updated.' }
        format.json { render :show, status: :ok, location: @help }
      else
        format.html { render :edit }
        format.json { render json: @help.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help/1
  # DELETE /help/1.json
  def destroy
    @help.destroy
    respond_to do |format|
      format.html { redirect_to help_index_url, notice: 'Help was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help
      @help = Help.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_params
      params.require(:help).permit(:title, :body, :tags)
    end
end
