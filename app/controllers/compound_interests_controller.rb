# frozen_string_literal: true

class CompoundInterestsController < ApplicationController
  def index
    @compound_interests = CompoundInterest.all
  end

  def new
    @compound_interest = CompoundInterest.new
  end

  def show
    @compound_interest = CompoundInterest.find(params[:id])
  end

  def create
    @compound_interest = CompoundInterest.new(compound_interest_params)
    @compound_interest.calculate_compound_interest

    if @compound_interest.save
      render :show
    else
      render :new
    end
  end

  private

  def compound_interest_params
    params
      .require(:compound_interest)
      .permit(:principal, :interest_rate, :years)
  end
end
