class Api::V1::ImageInvoicesController < ApplicationController
  before_action :set_image_invoice, only: [:show, :update, :destroy]

  # GET /image_invoices
  def index
    @image_invoices = ImageInvoice.all

    render json: @image_invoices
  end

  # GET /image_invoices/1
  def show
    render json: @image_invoice
  end

  # POST /image_invoices
  def create
    @image_invoice = ImageInvoice.new(image_invoice_params)

    if @image_invoice.save
      render json: @image_invoice, status: :created, location: @image_invoice
    else
      render json: @image_invoice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /image_invoices/1
  def update
    if @image_invoice.update(image_invoice_params)
      render json: @image_invoice
    else
      render json: @image_invoice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /image_invoices/1
  def destroy
    @image_invoice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_invoice
      @image_invoice = ImageInvoice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_invoice_params
      params.require(:image_invoice).permit(:image_id, :invoice_id)
    end
end
