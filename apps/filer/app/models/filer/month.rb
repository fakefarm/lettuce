module Filer
  class Month < ActiveRecord::Base
    has_many :sources
  end
end
