class ImageCompaniesController < ApplicationController
  before_action :set_image_company, only: [:show, :update, :destroy]

  # GET /image_companies
  def index
    @image_companies = ImageCompany.all

    render json: @image_companies
  end

  # GET /image_companies/1
  def show
    render json: @image_company
  end

  # POST /image_companies
  def create
    @image_company = ImageCompany.new(image_company_params)

    if @image_company.save
      render json: @image_company, status: :created, location: @image_company
    else
      render json: @image_company.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /image_companies/1
  def update
    if @image_company.update(image_company_params)
      render json: @image_company
    else
      render json: @image_company.errors, status: :unprocessable_entity
    end
  end

  # DELETE /image_companies/1
  def destroy
    @image_company.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_company
      @image_company = ImageCompany.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_company_params
      params.require(:image_company).permit(:image_id, :company_id)
    end
end
