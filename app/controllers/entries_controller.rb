class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  respond_to :json

  def index
    respond_with Entry.all
  end

  def show
    respond_with Entry.find(params[:id])
  end

  def create
    respond_with Entry.create(entry_params)
  end

  def update
    respond_with Entry.update(params[:id], entry_params)
  end

  def destroy
    respond_with Entry.destroy(params[:id])
  end

  private
    def set_entry
      @post = Entry.find(params[:id])
    end

    def entry_params
      params.require(:entry).permit(:name, :winner)
    end
end
