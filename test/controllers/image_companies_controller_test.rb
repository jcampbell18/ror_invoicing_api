require 'test_helper'

class ImageCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_company = image_companies(:one)
  end

  test "should get index" do
    get image_companies_url, as: :json
    assert_response :success
  end

  test "should create image_company" do
    assert_difference('ImageCompany.count') do
      post image_companies_url, params: { image_company: { company_id: @image_company.company_id, image_id: @image_company.image_id } }, as: :json
    end

    assert_response 201
  end

  test "should show image_company" do
    get image_company_url(@image_company), as: :json
    assert_response :success
  end

  test "should update image_company" do
    patch image_company_url(@image_company), params: { image_company: { company_id: @image_company.company_id, image_id: @image_company.image_id } }, as: :json
    assert_response 200
  end

  test "should destroy image_company" do
    assert_difference('ImageCompany.count', -1) do
      delete image_company_url(@image_company), as: :json
    end

    assert_response 204
  end
end
