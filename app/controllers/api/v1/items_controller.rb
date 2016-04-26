class Api::V1::ItemsController < ApplicationController
  respond_to :json
  def index
    respond_with :api, :v1, Item.all
  end
end
