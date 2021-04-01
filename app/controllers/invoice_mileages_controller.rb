class InvoiceMileagesController < ApplicationController
  before_action :set_invoice_mileage, only: [:show, :update, :destroy]

  # GET /invoice_mileages
  def index
    @invoice_mileages = InvoiceMileage.all

    render json: @invoice_mileages
  end

  # GET /invoice_mileages/1
  def show
    render json: @invoice_mileage
  end

  # POST /invoice_mileages
  def create
    @invoice_mileage = InvoiceMileage.new(invoice_mileage_params)

    if @invoice_mileage.save
      render json: @invoice_mileage, status: :created, location: @invoice_mileage
    else
      render json: @invoice_mileage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoice_mileages/1
  def update
    if @invoice_mileage.update(invoice_mileage_params)
      render json: @invoice_mileage
    else
      render json: @invoice_mileage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoice_mileages/1
  def destroy
    @invoice_mileage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_mileage
      @invoice_mileage = InvoiceMileage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invoice_mileage_params
      params.require(:invoice_mileage).permit(:invoice_id, :mileage_id)
    end
end
