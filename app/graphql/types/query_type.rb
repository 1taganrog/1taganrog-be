module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :albums, [Types::AlbumType, null: false ],null: false, description: 'Return all albums'

    def albums
      Album.all
    end

    field :museums, [Types::MuseumType, null: false ],null: false, description: 'Return all museums'

    def museums
      Museum.all
    end

    field :industries, [Types::IndustryType, null: false ],null: false, description: 'Return all industries'

    def industries
      Industry.all
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
