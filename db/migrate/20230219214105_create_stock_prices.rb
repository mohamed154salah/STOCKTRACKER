class CreateStockPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_prices do |t|
      t.decimal :price
      t.date :caputerd_at
      t.references :compny, null: false, foreign_key: true

      t.timestamps
    end
  end
end
