module Types
  class AlbumType < Types::BaseObject
    field :id, GraphQL::Types::ID, null: false
    field :media_url, String, null: false
    field :is_wide, Boolean, null: false
    field :text_color, String, null: false
    field :site_url, String, null: false
    field :on_maps_url, String, null: false
    field :bg_color, String, null: false
    field :name, String, null: false
    field :media, [Types::MediumType, null: false], null: false
  end
end