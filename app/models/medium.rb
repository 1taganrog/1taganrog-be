class Medium < ApplicationRecord
  validates :content, :content_type, :mediumable_id, :mediumable_type, presence: true

  belongs_to :mediumable, polymorphic: true, required: true
end
