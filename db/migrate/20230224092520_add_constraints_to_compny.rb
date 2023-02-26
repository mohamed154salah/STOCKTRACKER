class AddConstraintsToCompny < ActiveRecord::Migration[7.0]
  def change
    remove_column:compnies,:name
    add_column :compnies, :name, :string, null: false
    
    remove_column:compnies,:ticker_symbol
    add_column :compnies, :ticker_symbol, :string, null: false
    
    remove_column :compnies, :risk_factor
    add_column :compnies, :risk_factor, :string, null: false
  end
end
