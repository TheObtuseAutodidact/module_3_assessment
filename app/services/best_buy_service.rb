class BestBuyService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("http://api.bestbuy.com/v1/products")
    connection.params['apiKey'] = ENV['best_buy_key']
  end

  def search(keyword)
    JSON.parse(connection.get("products((search=#{keyword})?show=name,sku,salePrice,shortDescription,customerReviewAverage,image&format=json").body)
  # endsku, name, customer average review, short description, sale price, and image
end

end
