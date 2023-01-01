module Types
  class MediumType < Types::BaseObject
    field :id, GraphQL::Types::ID, null: false
    field :content, String, null: false
    field :content_type, String, null: false
    field :mediumable_type, String, null: false
  end
end