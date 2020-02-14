# frozen_string_literal: true

class CompoundInterestCalculation < ApplicationRecord
  before_save :calculate_compound_interest

  # we are assuming that the interest is compounding once a year
  COMPOUND_CADENCE = 1

  validates :principal, presence: true, numericality: { greater_than: 0 }
  validates :interest_rate, presence: true, numericality: true
  validates :years, presence: true, numericality: { greater_than: 0 }
  validates_presence_of :principal, :interest_rate, :years

  private

  def calculate_compound_interest
    self.amount = principal * (1 + converted_interest_rate / COMPOUND_CADENCE) ** (COMPOUND_CADENCE * years)
  end

  def converted_interest_rate
    interest_rate / 100
  end
end
