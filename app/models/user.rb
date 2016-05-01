class User < ActiveRecord::Base
  include Clearance::User
  has_one :preference
  belongs_to :family
end
