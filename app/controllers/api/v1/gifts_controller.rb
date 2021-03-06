class Api::V1::GiftsController < ApplicationController
  before_action :find_gift, only: [:update]

  def index
    @gifts = Gift.all
    render json: @gifts
  end

  def update
    @gift.update(gift_params)
    if @gift.save
      render json: @gift, status: :accepted
    else
      render json: { errors: @gift.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      render json: @gift, status: :accepted
    else
      render json: { errors: @gift.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @gift = Gift.find(params[:id]).destroy
  end

  private

  def gift_params
    params.permit(:user_id, :name, :notes, :image, :list_price, :store, :link, :age_range)
  end

  def find_gift
    @gift = Gift.find(params[:id])
  end
end
