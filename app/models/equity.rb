class Equity < ActiveRecord::Base
  has_many :transfers
  has_many :spends
end
