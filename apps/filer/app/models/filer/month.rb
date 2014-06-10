module Filer
  class Month < ActiveRecord::Base
    has_many :sources, dependent: :destroy
  end
end
