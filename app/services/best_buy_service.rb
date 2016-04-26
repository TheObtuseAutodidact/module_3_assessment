class BestBuyService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("http://api.bestbuy.com/v1/products")
    connection.params['apiKey'] = ENV['best_buy_key']
  end

  def search(keyword)
    connection.get("products((search=#{keyword})&salePrice<500&categoryPath.id=pcmcat209000050006)?show=name,sku,salePrice,shortDescription,customerReviewAverage,image&format=json")
  # endsku, name, customer average review, short description, sale price, and image

end
