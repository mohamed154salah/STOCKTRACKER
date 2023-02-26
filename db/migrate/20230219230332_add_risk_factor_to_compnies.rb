class AddRiskFactorToCompnies < ActiveRecord::Migration[7.0]
  def change
    add_column:compnies,:risk_factor,:string
  end
end
