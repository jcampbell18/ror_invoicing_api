require 'test_helper'

class ExpenseItemGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense_item_group = expense_item_groups(:one)
  end

  test "should get index" do
    get expense_item_groups_url, as: :json
    assert_response :success
  end

  test "should create expense_item_group" do
    assert_difference('ExpenseItemGroup.count') do
      post expense_item_groups_url, params: { expense_item_group: { expense_id: @expense_item_group.expense_id, expense_item_id: @expense_item_group.expense_item_id } }, as: :json
    end

    assert_response 201
  end

  test "should show expense_item_group" do
    get expense_item_group_url(@expense_item_group), as: :json
    assert_response :success
  end

  test "should update expense_item_group" do
    patch expense_item_group_url(@expense_item_group), params: { expense_item_group: { expense_id: @expense_item_group.expense_id, expense_item_id: @expense_item_group.expense_item_id } }, as: :json
    assert_response 200
  end

  test "should destroy expense_item_group" do
    assert_difference('ExpenseItemGroup.count', -1) do
      delete expense_item_group_url(@expense_item_group), as: :json
    end

    assert_response 204
  end
end
