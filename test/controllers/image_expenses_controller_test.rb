require 'test_helper'

class ImageExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_expense = image_expenses(:one)
  end

  test "should get index" do
    get image_expenses_url, as: :json
    assert_response :success
  end

  test "should create image_expense" do
    assert_difference('ImageExpense.count') do
      post image_expenses_url, params: { image_expense: { expense_id: @image_expense.expense_id, image_id: @image_expense.image_id } }, as: :json
    end

    assert_response 201
  end

  test "should show image_expense" do
    get image_expense_url(@image_expense), as: :json
    assert_response :success
  end

  test "should update image_expense" do
    patch image_expense_url(@image_expense), params: { image_expense: { expense_id: @image_expense.expense_id, image_id: @image_expense.image_id } }, as: :json
    assert_response 200
  end

  test "should destroy image_expense" do
    assert_difference('ImageExpense.count', -1) do
      delete image_expense_url(@image_expense), as: :json
    end

    assert_response 204
  end
end
