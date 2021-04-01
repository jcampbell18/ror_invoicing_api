require 'test_helper'

class ImageUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_user = image_users(:one)
  end

  test "should get index" do
    get image_users_url, as: :json
    assert_response :success
  end

  test "should create image_user" do
    assert_difference('ImageUser.count') do
      post image_users_url, params: { image_user: { image_id: @image_user.image_id, user_id: @image_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show image_user" do
    get image_user_url(@image_user), as: :json
    assert_response :success
  end

  test "should update image_user" do
    patch image_user_url(@image_user), params: { image_user: { image_id: @image_user.image_id, user_id: @image_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy image_user" do
    assert_difference('ImageUser.count', -1) do
      delete image_user_url(@image_user), as: :json
    end

    assert_response 204
  end
end
