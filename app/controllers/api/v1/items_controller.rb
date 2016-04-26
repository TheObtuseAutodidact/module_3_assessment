class Api::V1::ItemsController < ApplicationController
  respond_to :json
  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find_by(id: params[:id])
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
    render Item.all
  end
end
