class User < ActiveRecord::Base
  include Clearance::User
  has_one :setting
  belongs_to :family
end
