require 'test_helper'

class LineItemGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_item_group = line_item_groups(:one)
  end

  test "should get index" do
    get line_item_groups_url, as: :json
    assert_response :success
  end

  test "should create line_item_group" do
    assert_difference('LineItemGroup.count') do
      post line_item_groups_url, params: { line_item_group: { bid_invoice_id: @line_item_group.bid_invoice_id, line_item_id: @line_item_group.line_item_id } }, as: :json
    end

    assert_response 201
  end

  test "should show line_item_group" do
    get line_item_group_url(@line_item_group), as: :json
    assert_response :success
  end

  test "should update line_item_group" do
    patch line_item_group_url(@line_item_group), params: { line_item_group: { bid_invoice_id: @line_item_group.bid_invoice_id, line_item_id: @line_item_group.line_item_id } }, as: :json
    assert_response 200
  end

  test "should destroy line_item_group" do
    assert_difference('LineItemGroup.count', -1) do
      delete line_item_group_url(@line_item_group), as: :json
    end

    assert_response 204
  end
end
