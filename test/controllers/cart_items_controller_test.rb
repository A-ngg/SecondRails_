require "test_helper"

# create should be POST not GET
# destroy should be DELETE not GET

class CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_items_url
    assert_response :success
  end

  test "should create cart item" do
    item = items(:one) # Assuming you have a fixture for items
    assert_difference('CartItem.count', 1) do
      post cart_items_url, params: { item_id: item.id }
    end
    assert_redirected_to cart_items_url
  end

  test "should destroy cart item" do
    cart_item = cart_items(:one) # Assuming you have a fixture for cart items
    assert_difference('CartItem.count', -1) do
      delete cart_item_url(cart_item)
    end
    assert_redirected_to cart_items_url
  end
end

# require "test_helper"

# #line 9-17


# class CartItemsControllerTest < ActionDispatch::IntegrationTest
#   test "should get index" do
#     get cart_items_index_url
#     assert_response :success
#   end

#   test "should get create" do
#     get cart_items_create_url
#     assert_response :success
#   end

#   test "should get destroy" do
#     get cart_items_destroy_url
#     assert_response :success
#   end
# end
