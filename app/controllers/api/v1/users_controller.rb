class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later

      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy

  end

  def get_budget
    user = User.find(params[:id])
    budgets = Budget.all.where(user_id: user.id)


  end

  private

  def user_params
    params.permit(:username, :password, :email, :first_name, :last_name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
