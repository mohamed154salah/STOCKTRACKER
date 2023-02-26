class CreateCryptoPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :crypto_prices do |t|
      t.decimal :price
      t.date :captured_at
      t.references :cryptocurrency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
