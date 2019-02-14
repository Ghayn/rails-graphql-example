class Link < ApplicationRecord
  validates :url, presence: true, uniqueness: true
  validates :description, presence: true

  belongs_to :user
end
