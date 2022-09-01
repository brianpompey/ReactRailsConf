class Api::V1::DonationsController < ApplicationController
  def create
    @conference = Conference.find(params[:donation][:conference_id])
    @donation = Donation.new(donation_params)

        
        
    if @donation.valid_donation(@conference)
      flash[:notice] = "You're Registered!"
      render json: @donation
    else
      render json: @donation.errors
    end
  end

  private

  def donations_params
    params.require(:donation).permit(:user_id, :conference_id, :amount)
  end
end
