require "application_system_test_case"

class CryptopricesTest < ApplicationSystemTestCase
  setup do
    @cryptoprice = cryptoprices(:one)
  end

  test "visiting the index" do
    visit cryptoprices_url
    assert_selector "h1", text: "Cryptoprices"
  end

  test "should create cryptoprice" do
    visit cryptoprices_url
    click_on "New cryptoprice"

    fill_in "Captured at", with: @cryptoprice.captured_at
    fill_in "Cryptocurrencies", with: @cryptoprice.cryptocurrencies_id
    fill_in "Price", with: @cryptoprice.price
    click_on "Create Cryptoprice"

    assert_text "Cryptoprice was successfully created"
    click_on "Back"
  end

  test "should update Cryptoprice" do
    visit cryptoprice_url(@cryptoprice)
    click_on "Edit this cryptoprice", match: :first

    fill_in "Captured at", with: @cryptoprice.captured_at
    fill_in "Cryptocurrencies", with: @cryptoprice.cryptocurrencies_id
    fill_in "Price", with: @cryptoprice.price
    click_on "Update Cryptoprice"

    assert_text "Cryptoprice was successfully updated"
    click_on "Back"
  end

  test "should destroy Cryptoprice" do
    visit cryptoprice_url(@cryptoprice)
    click_on "Destroy this cryptoprice", match: :first

    assert_text "Cryptoprice was successfully destroyed"
  end
end
