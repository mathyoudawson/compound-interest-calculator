# frozen_string_literal: true

class CompoundInterestCalculation < ApplicationRecord
  before_save :calculate_compound_interest

  COMPOUND_CADENCE = 1

  validates_presence_of :principal, :interest_rate, :years

  private

  def calculate_compound_interest
    self.amount = principal * (1 + interest_rate / COMPOUND_CADENCE) ** (COMPOUND_CADENCE * years)
  end
end
