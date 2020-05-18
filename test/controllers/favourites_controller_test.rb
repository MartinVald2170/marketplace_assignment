require 'test_helper'

class FavouritesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get favourites_update_url
    assert_response :success
  end

end
