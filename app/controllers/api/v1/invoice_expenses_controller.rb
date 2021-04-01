class Api::V1::InvoiceExpensesController < ApplicationController
  before_action :set_invoice_expense, only: [:show, :update, :destroy]

  # GET /invoice_expenses
  def index
    @invoice_expenses = InvoiceExpense.all

    render json: @invoice_expenses
  end

  # GET /invoice_expenses/1
  def show
    render json: @invoice_expense
  end

  # POST /invoice_expenses
  def create
    @invoice_expense = InvoiceExpense.new(invoice_expense_params)

    if @invoice_expense.save
      render json: @invoice_expense, status: :created, location: @invoice_expense
    else
      render json: @invoice_expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoice_expenses/1
  def update
    if @invoice_expense.update(invoice_expense_params)
      render json: @invoice_expense
    else
      render json: @invoice_expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoice_expenses/1
  def destroy
    @invoice_expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_expense
      @invoice_expense = InvoiceExpense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invoice_expense_params
      params.require(:invoice_expense).permit(:invoice_id, :expense_id)
    end
end
