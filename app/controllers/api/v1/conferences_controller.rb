class Api::V1::ConferencesController < ApplicationController
  def create
    @conference = Conference.new(conference_params)

    if @conference.save
      render json: @conference
    else
      render json: @conference.errors
    end
  end

  def index
    @conferences = Conference.all

    render json: @conferences
  end

  def show
    render json: @conference
  end

  private

  def conference_params
    params.require(:conference).permit(:name, :date, :time, :min_donation, :keynote, :category, workshops_attributes: [:name, :description], talks_attributes: [:name, :description])
  end
end
