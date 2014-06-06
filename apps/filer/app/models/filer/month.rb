module Filer
  class Month < ActiveRecord::Base
    has_many :sources
    mount_uploader :document, DocumentUploader
  end
end
