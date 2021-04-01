class BidInvoicesController < ApplicationController
  before_action :set_bid_invoice, only: [:show, :update, :destroy]

  # GET /bid_invoices
  def index
    @bid_invoices = BidInvoice.all

    render json: @bid_invoices
  end

  # GET /bid_invoices/1
  def show
    render json: @bid_invoice
  end

  # POST /bid_invoices
  def create
    @bid_invoice = BidInvoice.new(bid_invoice_params)

    if @bid_invoice.save
      render json: @bid_invoice, status: :created, location: @bid_invoice
    else
      render json: @bid_invoice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bid_invoices/1
  def update
    if @bid_invoice.update(bid_invoice_params)
      render json: @bid_invoice
    else
      render json: @bid_invoice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bid_invoices/1
  def destroy
    @bid_invoice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid_invoice
      @bid_invoice = BidInvoice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bid_invoice_params
      params.require(:bid_invoice).permit(:bid_id, :invoice_id)
    end
end
