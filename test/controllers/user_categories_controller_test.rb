require 'test_helper'

class UserCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_category = user_categories(:one)
  end

  test "should get index" do
    get user_categories_url, as: :json
    assert_response :success
  end

  test "should create user_category" do
    assert_difference('UserCategory.count') do
      post user_categories_url, params: { user_category: { description: @user_category.description, name: @user_category.name } }, as: :json
    end

    assert_response 201
  end

  test "should show user_category" do
    get user_category_url(@user_category), as: :json
    assert_response :success
  end

  test "should update user_category" do
    patch user_category_url(@user_category), params: { user_category: { description: @user_category.description, name: @user_category.name } }, as: :json
    assert_response 200
  end

  test "should destroy user_category" do
    assert_difference('UserCategory.count', -1) do
      delete user_category_url(@user_category), as: :json
    end

    assert_response 204
  end
end
