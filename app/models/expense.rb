class Expense < ActiveRecord::Base
  belongs_to :book
  belongs_to :equity

  # TODO total expense budget per book
  # TODO total allocations balance per book
  # TODO next auto-allocate date for book
  # TODO last auto-allocate date for book
  # TODO next auto-allocate amount for book
end
