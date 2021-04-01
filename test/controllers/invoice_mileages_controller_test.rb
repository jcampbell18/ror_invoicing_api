require 'test_helper'

class InvoiceMileagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_mileage = invoice_mileages(:one)
  end

  test "should get index" do
    get invoice_mileages_url, as: :json
    assert_response :success
  end

  test "should create invoice_mileage" do
    assert_difference('InvoiceMileage.count') do
      post invoice_mileages_url, params: { invoice_mileage: { invoice_id: @invoice_mileage.invoice_id, mileage_id: @invoice_mileage.mileage_id } }, as: :json
    end

    assert_response 201
  end

  test "should show invoice_mileage" do
    get invoice_mileage_url(@invoice_mileage), as: :json
    assert_response :success
  end

  test "should update invoice_mileage" do
    patch invoice_mileage_url(@invoice_mileage), params: { invoice_mileage: { invoice_id: @invoice_mileage.invoice_id, mileage_id: @invoice_mileage.mileage_id } }, as: :json
    assert_response 200
  end

  test "should destroy invoice_mileage" do
    assert_difference('InvoiceMileage.count', -1) do
      delete invoice_mileage_url(@invoice_mileage), as: :json
    end

    assert_response 204
  end
end
