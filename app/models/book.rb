class Book < ActiveRecord::Base
  has_many :expenses
end
