# frozen_string_literal: true

class CompoundInterest < ApplicationRecord
  def calculate_compound_interest
    self.amount = principal * (1 + interest_rate) ** years
  end
end
