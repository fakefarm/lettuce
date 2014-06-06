module Filer
  class Source < ActiveRecord::Base
    belongs_to :month
    has_many :comments
    mount_uploader :document, DocumentUploader
  end
end
