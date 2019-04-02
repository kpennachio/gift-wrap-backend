class Api::V1::BudgetsController < ApplicationController
  before_action :find_budget, only: [:update]

  def index
    @budgets = Budget.all
    render json: @budgets
  end

  def update
    @budget.update(budget_params)
    if @budget.save
      render json: @budget, status: :accepted
    else
      render json: { errors: @budget.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      render json: @budget, status: :accepted
    else
      render json: { errors: @budget.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @budget = Budget.find(params[:id]).destroy

  end

  private

  def budget_params
    params.permit(:budgetname)
  end

  def find_budget
    @budget = Budget.find(params[:id])
  end
end
