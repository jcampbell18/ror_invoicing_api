require 'test_helper'

class ExpenseItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense_item = expense_items(:one)
  end

  test "should get index" do
    get expense_items_url, as: :json
    assert_response :success
  end

  test "should create expense_item" do
    assert_difference('ExpenseItem.count') do
      post expense_items_url, params: { expense_item: { amount: @expense_item.amount, name: @expense_item.name, quantity: @expense_item.quantity, subtotal: @expense_item.subtotal, tax: @expense_item.tax, total: @expense_item.total } }, as: :json
    end

    assert_response 201
  end

  test "should show expense_item" do
    get expense_item_url(@expense_item), as: :json
    assert_response :success
  end

  test "should update expense_item" do
    patch expense_item_url(@expense_item), params: { expense_item: { amount: @expense_item.amount, name: @expense_item.name, quantity: @expense_item.quantity, subtotal: @expense_item.subtotal, tax: @expense_item.tax, total: @expense_item.total } }, as: :json
    assert_response 200
  end

  test "should destroy expense_item" do
    assert_difference('ExpenseItem.count', -1) do
      delete expense_item_url(@expense_item), as: :json
    end

    assert_response 204
  end
end
