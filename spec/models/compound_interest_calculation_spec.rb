require 'rails_helper'

RSpec.describe CompoundInterestCalculation, type: :model do
  subject do
    CompoundInterestCalculation.new(
      :principal     => principal,
      :interest_rate => interest_rate,
      :years         => years) 
  end

  let(:principal) { 10000 }
  let(:interest_rate) { 5 }
  let(:years) { 10 }

  context 'when the model is valid' do
    it 'calculates the correct amount when saved' do
      expected_result = 16288.95.to_d

      subject.save

      expect(subject.amount.round(2)).to eql(expected_result)
    end
  end

  context 'when the model is invalid' do
    let(:principal) { "lots of money" }

    it 'generates errors on the model' do
      expect(subject.valid?).to eql(false)
    end
  end
end
