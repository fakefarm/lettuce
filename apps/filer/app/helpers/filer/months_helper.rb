module Filer
  module MonthsHelper
    def comment_count(source)
      if source.comments.count > 0
        source.comments.count
      else
        'add'
      end
    end
  end
end
