module Filer
  class Source < ActiveRecord::Base
    mount_uploader :document, DocumentUploader
    belongs_to :month
    has_many :comments
    validates :month_id, presence: true
    validates :document, presence: true
    validates :name, presence: true
  end
end
