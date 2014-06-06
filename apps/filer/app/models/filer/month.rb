module Filer
  class Month < ActiveRecord::Base
    mount_uploader :document, DocumentUploader
    has_many :sources
  end
end
