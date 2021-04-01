require 'test_helper'

class InvoiceExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_expense = invoice_expenses(:one)
  end

  test "should get index" do
    get invoice_expenses_url, as: :json
    assert_response :success
  end

  test "should create invoice_expense" do
    assert_difference('InvoiceExpense.count') do
      post invoice_expenses_url, params: { invoice_expense: { expense_id: @invoice_expense.expense_id, invoice_id: @invoice_expense.invoice_id } }, as: :json
    end

    assert_response 201
  end

  test "should show invoice_expense" do
    get invoice_expense_url(@invoice_expense), as: :json
    assert_response :success
  end

  test "should update invoice_expense" do
    patch invoice_expense_url(@invoice_expense), params: { invoice_expense: { expense_id: @invoice_expense.expense_id, invoice_id: @invoice_expense.invoice_id } }, as: :json
    assert_response 200
  end

  test "should destroy invoice_expense" do
    assert_difference('InvoiceExpense.count', -1) do
      delete invoice_expense_url(@invoice_expense), as: :json
    end

    assert_response 204
  end
end
