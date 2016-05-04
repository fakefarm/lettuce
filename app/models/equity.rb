class Equity < ActiveRecord::Base
  has_many :transfers
  has_many :expenses
  has_many :spends
  has_many :streams

  before_create :assign_current_balance
  after_create  :create_asset
  after_update :update_asset_balance

private
  def assign_current_balance
    self.current_balance = self.starting_balance
  end

  def create_asset
    Asset.create(equity_id: self.id, balance: self.starting_balance, user_id: self.user_id)
  end

  def update_asset_balance
    Asset.find_by_equity_id(self.id).update_attribute('balance', self.current_balance)
  end
end
