require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url, as: :json
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { bid_id: @invoice.bid_id, company_id: @invoice.company_id, complete_date: @invoice.complete_date, project_site_id: @invoice.project_site_id, start_date: @invoice.start_date, term_id: @invoice.term_id, total: @invoice.total } }, as: :json
    end

    assert_response 201
  end

  test "should show invoice" do
    get invoice_url(@invoice), as: :json
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { bid_id: @invoice.bid_id, company_id: @invoice.company_id, complete_date: @invoice.complete_date, project_site_id: @invoice.project_site_id, start_date: @invoice.start_date, term_id: @invoice.term_id, total: @invoice.total } }, as: :json
    assert_response 200
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice), as: :json
    end

    assert_response 204
  end
end
