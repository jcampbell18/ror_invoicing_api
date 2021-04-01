class Api::V1::LineItemGroupsController < ApplicationController
  before_action :set_line_item_group, only: [:show, :update, :destroy]

  # GET /line_item_groups
  def index
    @line_item_groups = LineItemGroup.all

    render json: @line_item_groups
  end

  # GET /line_item_groups/1
  def show
    render json: @line_item_group
  end

  # POST /line_item_groups
  def create
    @line_item_group = LineItemGroup.new(line_item_group_params)

    if @line_item_group.save
      render json: @line_item_group, status: :created, location: @line_item_group
    else
      render json: @line_item_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /line_item_groups/1
  def update
    if @line_item_group.update(line_item_group_params)
      render json: @line_item_group
    else
      render json: @line_item_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /line_item_groups/1
  def destroy
    @line_item_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item_group
      @line_item_group = LineItemGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def line_item_group_params
      params.require(:line_item_group).permit(:line_item_id, :bid_invoice_id)
    end
end
