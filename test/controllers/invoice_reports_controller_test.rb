require 'test_helper'

class InvoiceReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_report = invoice_reports(:one)
  end

  test "should get index" do
    get invoice_reports_url, as: :json
    assert_response :success
  end

  test "should create invoice_report" do
    assert_difference('InvoiceReport.count') do
      post invoice_reports_url, params: { invoice_report: { interest_amount: @invoice_report.interest_amount, interest_paid: @invoice_report.interest_paid, invoice_id: @invoice_report.invoice_id, loan_amount: @invoice_report.loan_amount, loan_paid: @invoice_report.loan_paid, net_amount: @invoice_report.net_amount, paid: @invoice_report.paid, paid_checknum: @invoice_report.paid_checknum, paid_date: @invoice_report.paid_date, project_cost: @invoice_report.project_cost, tax_amount: @invoice_report.tax_amount } }, as: :json
    end

    assert_response 201
  end

  test "should show invoice_report" do
    get invoice_report_url(@invoice_report), as: :json
    assert_response :success
  end

  test "should update invoice_report" do
    patch invoice_report_url(@invoice_report), params: { invoice_report: { interest_amount: @invoice_report.interest_amount, interest_paid: @invoice_report.interest_paid, invoice_id: @invoice_report.invoice_id, loan_amount: @invoice_report.loan_amount, loan_paid: @invoice_report.loan_paid, net_amount: @invoice_report.net_amount, paid: @invoice_report.paid, paid_checknum: @invoice_report.paid_checknum, paid_date: @invoice_report.paid_date, project_cost: @invoice_report.project_cost, tax_amount: @invoice_report.tax_amount } }, as: :json
    assert_response 200
  end

  test "should destroy invoice_report" do
    assert_difference('InvoiceReport.count', -1) do
      delete invoice_report_url(@invoice_report), as: :json
    end

    assert_response 204
  end
end
