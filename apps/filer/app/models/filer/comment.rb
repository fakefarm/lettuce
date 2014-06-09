module Filer
  class Comment < ActiveRecord::Base
    has_many :answers, class_name: 'Filer::Comment', foreign_key: 'question_id'
    belongs_to :question, class_name: 'Filer::Comment'
    belongs_to :source
  end
end
