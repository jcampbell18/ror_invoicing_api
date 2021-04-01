require 'test_helper'

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense = expenses(:one)
  end

  test "should get index" do
    get expenses_url, as: :json
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post expenses_url, params: { expense: { company_id: @expense.company_id, expense_category_id: @expense.expense_category_id, expense_date: @expense.expense_date, total: @expense.total } }, as: :json
    end

    assert_response 201
  end

  test "should show expense" do
    get expense_url(@expense), as: :json
    assert_response :success
  end

  test "should update expense" do
    patch expense_url(@expense), params: { expense: { company_id: @expense.company_id, expense_category_id: @expense.expense_category_id, expense_date: @expense.expense_date, total: @expense.total } }, as: :json
    assert_response 200
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete expense_url(@expense), as: :json
    end

    assert_response 204
  end
end
