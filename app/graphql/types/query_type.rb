module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :albumsPaginated, Types::AlbumType.collection_type, null: true do
      argument :page, Integer, required: false
      argument :limit, Integer, required: false
    end

    def albumsPaginated(page: nil, limit: nil)
      ::Album.page(page).per(limit)
    end

    field :museumsPaginated, Types::MuseumType.collection_type, null: true do
      argument :page, Integer, required: false
      argument :limit, Integer, required: false
    end

    def museumsPaginated(page: nil, limit: nil)
      ::Museum.page(page).per(limit)
    end

    field :industriesPaginated, Types::IndustryType.collection_type, null: true do
      argument :page, Integer, required: false
      argument :limit, Integer, required: false
    end

    def industriesPaginated(page: nil, limit: nil)
      ::Industry.page(page).per(limit)
    end

    field :homeVideo, Types::HomeVideoType ,null: false, description: 'Return home video'

    def home_video
      HomeVideo.last
    end

    field :homeAudio, Types::HomeAudioType ,null: false, description: 'Return home audio'

    def home_audio
      HomeAudio.last
    end
  end
end
