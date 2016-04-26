require "test_helper"

class Api::V1::ItemsControllerTest < ActionController::TestCase
  # def test_sanity
  #   flunk "Need real tests"
  # end

  test "should get index of all items" do
    get :index
    assert_response :success
    # assert_includes @response.body, "Items"
  end
end

# When I send a GET request to `/api/v1/items`
# I receive a 200 JSON response containing all items
# And each item has a name, description, and image_url but not the created_at or updated_at
# ​
# When I send a GET request to `/api/v1/items/1`
# I receive a 200 JSON response containing the name, description, and image_url but not the created_at or updated_at
# ​
# When I send a DELETE request to `/api/v1/items/1`
# I receive a 204 JSON response if the record is successfully deleted
# ​
# When I send a POST request to `/api/v1/items` with a name, description, and image_url
# I receive a 201 JSON  response if the record is successfully created
# And I receive a JSON response containing the name, description, and image_url but not the created_at or updated_at
