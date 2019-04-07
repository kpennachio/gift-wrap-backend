class Api::V1::PersonGiftEventsController < ApplicationController
  before_action :find_person_gift_event, only: [:update]

  def index
    @person_gift_events = PersonGiftEvent.all
    render json: @person_gift_events
  end

  def update
    @person_gift_event.update(person_gift_event_params)
    if @person_gift_event.save
      render json: @person_gift_event, status: :accepted
    else
      render json: { errors: @person_gift_event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @person_gift_event = PersonGiftEvent.new(person_gift_event_params)
    if @person_gift_event.save
      render json: @person_gift_event, status: :accepted
    else
      render json: { errors: @person_gift_event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @person_gift_event = PersonGiftEvent.find(params[:id]).destroy

  end

  private

  def person_gift_event_params
    params.permit(:event_id, :person_id, :gift_id)
  end

  def find_person_gift_event
    @person_gift_event = PersonGiftEvent.find(params[:id])
  end
end
