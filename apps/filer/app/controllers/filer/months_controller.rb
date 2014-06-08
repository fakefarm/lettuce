require_dependency "filer/application_controller"
require_dependency "filer/document_uploader"

module Filer
  class MonthsController < ApplicationController
    before_action :set_month, only: [:show, :edit, :update, :destroy]

    def index
      @months = Month.all.order('created_at DESC')
    end

    def show
      @source = Source.new
      @sources = Source.where(month_id: params[:id])
      # @comments = Comment.where(source_id: 2) TODO - show all comments in a month
    end

    def new
      @month = Month.new
    end

    def edit
    end

    def create
      @month = Month.new(month_params)

      if @month.save
        redirect_to @month, notice: "#{month_params[:name]} was successfully created."
      else
        render :new
      end
    end

    def update
      # require 'pry'; binding.pry
      if @month.update(month_params)
        redirect_to @month, notice: "Month was successfully #{month_params[:status]}."
      else
        render :edit
      end
    end

    def destroy
      @month.destroy
      redirect_to months_url, notice: 'Month was successfully destroyed.'
    end

    private
      def set_month
        @month = Month.find(params[:id])
      end

      def month_params
        params.require(:month).permit(:name, :status)
      end
  end
end
