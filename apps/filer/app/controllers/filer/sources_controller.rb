require_dependency "filer/application_controller"
require_dependency "filer/document_uploader"

module Filer
  class SourcesController < ApplicationController
    before_action :set_source, only: [:show, :edit, :update, :destroy]

    def index
      @sources = Source.all
      @source = Source.new
    end

    def show
      @comment = Comment.new
      @comments = Comment.where(source_id: params[:id]).order('created_at DESC')
    end

    def new
      @source = Source.new
    end

    def edit
    end

    def create
      @source = Source.new(source_params)
      if @source.save
        redirect_to month_path(@source.month_id), notice: 'Source was successfully created.'
      else
        render :new
      end
    end

    def update
      if @source.update(source_params)
        redirect_to @source, notice: 'Source was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @source.destroy
      redirect_to sources_url, notice: 'Source was successfully destroyed.'
    end

    private
      def set_source
        @source = Source.find(params[:id])
      end

      def source_params
        params.require(:source).permit(:name, :note, :month_id, :document)
      end
  end
end
