class Album < ApplicationRecord
  validates :name, :bg_color, :media_url, :on_maps_url, :text_color, :site_url, presence: true
  validates :is_wide, inclusion: { in: [ true, false ] }

  has_many :medium, as: :mediumable, dependent: :destroy
end
