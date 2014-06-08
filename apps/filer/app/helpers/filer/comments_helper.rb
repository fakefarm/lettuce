module Filer
  module CommentsHelper
    def month_name(comment)
      source = Filer::Month.find(comment.source.month_id)
      source.name
    end

    def mo_path(comment)
      month_path(comment.source.month_id)
    end
  end
end
