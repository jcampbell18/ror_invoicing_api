class InvoiceReportsController < ApplicationController
  before_action :set_invoice_report, only: [:show, :update, :destroy]

  # GET /invoice_reports
  def index
    @invoice_reports = InvoiceReport.all

    render json: @invoice_reports
  end

  # GET /invoice_reports/1
  def show
    render json: @invoice_report
  end

  # POST /invoice_reports
  def create
    @invoice_report = InvoiceReport.new(invoice_report_params)

    if @invoice_report.save
      render json: @invoice_report, status: :created, location: @invoice_report
    else
      render json: @invoice_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoice_reports/1
  def update
    if @invoice_report.update(invoice_report_params)
      render json: @invoice_report
    else
      render json: @invoice_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoice_reports/1
  def destroy
    @invoice_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_report
      @invoice_report = InvoiceReport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invoice_report_params
      params.require(:invoice_report).permit(:invoice_id, :paid, :paid_date, :paid_checknum, :loan_amount, :loan_paid, :project_cost, :interest_amount, :interest_paid, :tax_amount, :net_amount)
    end
end
