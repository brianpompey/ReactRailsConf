class Api::V1::DonationsController < ApplicationController
  def create
    # @
  end

  private

  def donations_params
    params.require(:donation).permit(:user_id, :conference_id, :amount)
  end
end
