module Types
  class HomeAudioType < Types::BaseObject
    field :id, GraphQL::Types::ID, null: false
    field :media_url, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end