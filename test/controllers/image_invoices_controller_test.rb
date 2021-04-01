require 'test_helper'

class ImageInvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_invoice = image_invoices(:one)
  end

  test "should get index" do
    get image_invoices_url, as: :json
    assert_response :success
  end

  test "should create image_invoice" do
    assert_difference('ImageInvoice.count') do
      post image_invoices_url, params: { image_invoice: { image_id: @image_invoice.image_id, invoice_id: @image_invoice.invoice_id } }, as: :json
    end

    assert_response 201
  end

  test "should show image_invoice" do
    get image_invoice_url(@image_invoice), as: :json
    assert_response :success
  end

  test "should update image_invoice" do
    patch image_invoice_url(@image_invoice), params: { image_invoice: { image_id: @image_invoice.image_id, invoice_id: @image_invoice.invoice_id } }, as: :json
    assert_response 200
  end

  test "should destroy image_invoice" do
    assert_difference('ImageInvoice.count', -1) do
      delete image_invoice_url(@image_invoice), as: :json
    end

    assert_response 204
  end
end
