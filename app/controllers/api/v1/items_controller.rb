class Api::V1::ItemsController < Api::ApiController
  respond_to :json
  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find_by(id: params[:id])
  end

  def create
    item = Item.create(item_params)
    respond_with Item.find_by(id: item.id)
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
    respond_with Item.all
  end

  private

    def item_params
      params.require(:item).permit(:name, :description, :image_url)
    end
end
