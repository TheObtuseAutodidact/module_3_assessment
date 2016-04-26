require "test_helper"

class BestBuyTest < ActionDispatch::IntegrationTest

  test "search products by brand" do
    visit "/"
    fill_in "search", with: "sennheiser"
    click_on "search"
    assert_path("/search")
    # assert_equal 15, results.count
    #
    #
  end
end

# As a user
# When I visit the "/"
# And I fill in the search box with "sennheiser" and click "search"
# Then my current path should be "/search"
# And I should see exactly 15 results
# And each result should contain sku, name, customer average review, short description, sale price, and image ONLY
# ​
# As a user
# When I visit the "/"
# And I fill in the search box with "sennheiser headphones white" and click "search"
# Then my current path should be "/search"
# And I should see limited results (at the time of writing, 3. SKUs: 9068155, 9068004, 9068128)
# And each result should contain sku, name, customer average review, short description, sale price, and image ONLY
