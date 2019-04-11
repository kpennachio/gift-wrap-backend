class Api::V1::PeopleController < ApplicationController
  before_action :find_person, only: [:update]

  def index
    @people = Person.all
    render json: @people
  end

  def update
    @person.update(person_params)
    if @person.save
      render json: @person, status: :accepted
    else
      render json: { errors: @person.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      render json: @person, status: :accepted
    else
      render json: { errors: @person.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @person_gift_ideas = PersonGiftIdea.where(person_id: params[:id]).destroy_all
    # @person_gift_events = PersonGiftEvent.where(person_id: params[:id]).destroy_all


    @person = Person.find(params[:id]).destroy

  end

  private

  def person_params
    params.permit(:user_id, :name, :notes)
  end

  def find_person
    @person = Person.find(params[:id])
  end
end
