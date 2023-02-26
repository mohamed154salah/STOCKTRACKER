require "test_helper"

class CryptopricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cryptoprice = cryptoprices(:one)
  end

  test "should get index" do
    get cryptoprices_url
    assert_response :success
  end

  test "should get new" do
    get new_cryptoprice_url
    assert_response :success
  end

  test "should create cryptoprice" do
    assert_difference("Cryptoprice.count") do
      post cryptoprices_url, params: { cryptoprice: { captured_at: @cryptoprice.captured_at, cryptocurrencies_id: @cryptoprice.cryptocurrencies_id, price: @cryptoprice.price } }
    end

    assert_redirected_to cryptoprice_url(Cryptoprice.last)
  end

  test "should show cryptoprice" do
    get cryptoprice_url(@cryptoprice)
    assert_response :success
  end

  test "should get edit" do
    get edit_cryptoprice_url(@cryptoprice)
    assert_response :success
  end

  test "should update cryptoprice" do
    patch cryptoprice_url(@cryptoprice), params: { cryptoprice: { captured_at: @cryptoprice.captured_at, cryptocurrencies_id: @cryptoprice.cryptocurrencies_id, price: @cryptoprice.price } }
    assert_redirected_to cryptoprice_url(@cryptoprice)
  end

  test "should destroy cryptoprice" do
    assert_difference("Cryptoprice.count", -1) do
      delete cryptoprice_url(@cryptoprice)
    end

    assert_redirected_to cryptoprices_url
  end
end
