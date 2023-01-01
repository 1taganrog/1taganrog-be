class HomeAudio < ApplicationRecord
  validates :media_url, presence: true
end
