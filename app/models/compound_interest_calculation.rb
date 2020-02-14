# frozen_string_literal: true

class CompoundInterestCalculation < ApplicationRecord
  COMPOUND_CADENCE = 1

  def calculate_compound_interest
    self.amount = principal * (1 + interest_rate / COMPOUND_CADENCE) ** (COMPOUND_CADENCE * years)
  end
end
