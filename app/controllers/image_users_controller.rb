class ImageUsersController < ApplicationController
  before_action :set_image_user, only: [:show, :update, :destroy]

  # GET /image_users
  def index
    @image_users = ImageUser.all

    render json: @image_users
  end

  # GET /image_users/1
  def show
    render json: @image_user
  end

  # POST /image_users
  def create
    @image_user = ImageUser.new(image_user_params)

    if @image_user.save
      render json: @image_user, status: :created, location: @image_user
    else
      render json: @image_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /image_users/1
  def update
    if @image_user.update(image_user_params)
      render json: @image_user
    else
      render json: @image_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /image_users/1
  def destroy
    @image_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_user
      @image_user = ImageUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_user_params
      params.require(:image_user).permit(:image_id, :user_id)
    end
end
