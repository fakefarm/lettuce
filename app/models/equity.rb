class Equity < ActiveRecord::Base
  has_many :transfers
  has_many :transactions
end
