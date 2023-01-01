class HomeVideo < ApplicationRecord
  validates :media_url, presence: true
end
