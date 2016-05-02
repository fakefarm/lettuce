class Liability < ActiveRecord::Base
  before_create :assign_current_balance

private
  def assign_current_balance
    self.current_balance = self.starting_balance
  end
end
