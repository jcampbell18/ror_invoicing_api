class ImageExpensesController < ApplicationController
  before_action :set_image_expense, only: [:show, :update, :destroy]

  # GET /image_expenses
  def index
    @image_expenses = ImageExpense.all

    render json: @image_expenses
  end

  # GET /image_expenses/1
  def show
    render json: @image_expense
  end

  # POST /image_expenses
  def create
    @image_expense = ImageExpense.new(image_expense_params)

    if @image_expense.save
      render json: @image_expense, status: :created, location: @image_expense
    else
      render json: @image_expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /image_expenses/1
  def update
    if @image_expense.update(image_expense_params)
      render json: @image_expense
    else
      render json: @image_expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /image_expenses/1
  def destroy
    @image_expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_expense
      @image_expense = ImageExpense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_expense_params
      params.require(:image_expense).permit(:image_id, :expense_id)
    end
end
