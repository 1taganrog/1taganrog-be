class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :mediaUrl, :isWide, :bgColor, :textColor, :onMapsLink
  has_many :media
end
