class Api::V1::PersonGiftIdeasController < ApplicationController
  before_action :find_person_gift_idea, only: [:update]

  def index
    @person_gift_ideas = PersonGiftIdea.all
    render json: @person_gift_ideas
  end

  def update
    @person_gift_idea.update(person_gift_idea_params)
    if @person_gift_idea.save
      render json: @person_gift_idea, status: :accepted
    else
      render json: { errors: @person_gift_idea.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @person_gift_idea = PersonGiftIdea.new(person_gift_idea_params)
    if @person_gift_idea.save
      render json: @person_gift_idea, status: :accepted
    else
      render json: { errors: @person_gift_idea.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @person_gift_idea = PersonGiftIdea.find(params[:id]).destroy

  end

  private

  def person_gift_idea_params
    params.permit(:gift_idea_id, :person_id)
  end

  def find_person_gift_idea
    @person_gift_idea = PersonGiftIdea.find(params[:id])
  end
end
