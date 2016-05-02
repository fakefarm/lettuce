module ApplicationHelper
  def stream_sum(equity_id)
    Stream.where(equity_id: equity_id).sum(:amount)
  end
end
