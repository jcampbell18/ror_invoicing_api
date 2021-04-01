require 'test_helper'

class BidInvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bid_invoice = bid_invoices(:one)
  end

  test "should get index" do
    get bid_invoices_url, as: :json
    assert_response :success
  end

  test "should create bid_invoice" do
    assert_difference('BidInvoice.count') do
      post bid_invoices_url, params: { bid_invoice: { bid_id: @bid_invoice.bid_id, invoice_id: @bid_invoice.invoice_id } }, as: :json
    end

    assert_response 201
  end

  test "should show bid_invoice" do
    get bid_invoice_url(@bid_invoice), as: :json
    assert_response :success
  end

  test "should update bid_invoice" do
    patch bid_invoice_url(@bid_invoice), params: { bid_invoice: { bid_id: @bid_invoice.bid_id, invoice_id: @bid_invoice.invoice_id } }, as: :json
    assert_response 200
  end

  test "should destroy bid_invoice" do
    assert_difference('BidInvoice.count', -1) do
      delete bid_invoice_url(@bid_invoice), as: :json
    end

    assert_response 204
  end
end
