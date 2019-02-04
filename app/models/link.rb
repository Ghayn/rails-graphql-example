class Link < ApplicationRecord
  validates :url, presence: true, uniqueness: true
  validates :description, presence: true
end
