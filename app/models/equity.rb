class Equity < ActiveRecord::Base
  has_many :transfers
  has_many :expenses
  has_many :spends
  has_many :streams

  before_create :assign_current_balance

private
  def assign_current_balance
    self.current_balance = self.starting_balance
  end
end
