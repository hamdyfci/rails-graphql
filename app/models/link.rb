class Link < ApplicationRecord
  validates :url, :description, presence: true
end
