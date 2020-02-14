class CreateCompoundInterestCalculations < ActiveRecord::Migration[6.0]
  def change
    create_table :compound_interest_calculations do |t|
      t.decimal :amount
      t.decimal :principal
      t.decimal :interest_rate
      t.decimal :years

      t.timestamps
    end
  end
end
