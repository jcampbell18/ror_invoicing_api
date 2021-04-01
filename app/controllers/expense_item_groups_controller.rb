class ExpenseItemGroupsController < ApplicationController
  before_action :set_expense_item_group, only: [:show, :update, :destroy]

  # GET /expense_item_groups
  def index
    @expense_item_groups = ExpenseItemGroup.all

    render json: @expense_item_groups
  end

  # GET /expense_item_groups/1
  def show
    render json: @expense_item_group
  end

  # POST /expense_item_groups
  def create
    @expense_item_group = ExpenseItemGroup.new(expense_item_group_params)

    if @expense_item_group.save
      render json: @expense_item_group, status: :created, location: @expense_item_group
    else
      render json: @expense_item_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expense_item_groups/1
  def update
    if @expense_item_group.update(expense_item_group_params)
      render json: @expense_item_group
    else
      render json: @expense_item_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expense_item_groups/1
  def destroy
    @expense_item_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_item_group
      @expense_item_group = ExpenseItemGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expense_item_group_params
      params.require(:expense_item_group).permit(:expense_id, :expense_item_id)
    end
end
