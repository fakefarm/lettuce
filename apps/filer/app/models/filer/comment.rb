module Filer
  class Comment < ActiveRecord::Base
    belongs_to :source
  end
end
