class Compny < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :ticker_symbol, presence: true, uniqueness: true
  validates :risk_factor, presence: true, inclusion: { in: %w(low medium high) }
  has_many :stock_prices
end
