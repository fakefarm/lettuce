module Filer
  module ApplicationHelper
    def file_types
      [['(please select)', ''], ['Source file', 'source file'], ['Monthly Report', 'Monthly report'], ['Invoice', 'invoice'], ['Tax related', 'tax related'], ['QuickBooks backup', 'QuickBooks backup'], ['Receipt', 'Receipt'], ]
    end
  end
end
