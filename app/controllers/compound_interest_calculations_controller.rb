class CompoundInterestCalculationsController < ApplicationController
  def index
    @compound_interest_calculations = CompoundInterestCalculation.all
  end

  def new
    @compound_interest_calculation = CompoundInterestCalculation.new
  end

  def show
    @compound_interest_calculation = CompoundInterestCalculation.find(params[:id])
  end

  def create
    @compound_interest_calculation = CompoundInterestCalculation.new(compound_interest_calculation_params)

    if @compound_interest_calculation.save
      render :show
    else
      render :new
    end
  end

  private

  def compound_interest_calculation_params
    params
      .require(:compound_interest_calculation)
      .permit(:principal, :interest_rate, :years)
  end

end
