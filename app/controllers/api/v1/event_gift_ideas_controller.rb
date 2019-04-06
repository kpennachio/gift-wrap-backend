class Api::V1::EventGiftIdeasController < ApplicationController
  before_action :find_event_gift_idea, only: [:update]

  def index
    @event_gift_ideas = EventGiftIdea.all
    render json: @event_gift_ideas
  end

  def update
    @event_gift_idea.update(event_gift_idea_params)
    if @event_gift_idea.save
      render json: @event_gift_idea, status: :accepted
    else
      render json: { errors: @event_gift_idea.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @event_gift_idea = EventGiftIdea.new(event_gift_idea_params)
    if @event_gift_idea.save
      render json: @event_gift_idea, status: :accepted
    else
      render json: { errors: @event_gift_idea.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @event_gift_idea = EventGiftIdea.find(params[:id]).destroy

  end

  private

  def event_gift_idea_params
    params.permit(:event_id, :gift_idea_id)
  end

  def find_event_gift_idea
    @event_gift_idea = EventGiftIdea.find(params[:id])
  end
end
