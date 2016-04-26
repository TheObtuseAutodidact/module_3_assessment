class BestBuyService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("http://api.bestbuy.com/v1/products")
    connection.params['apiKey'] = ENV['best_buy_key']
  end

end
