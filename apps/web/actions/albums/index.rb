# frozen_string_literal: true

module Web
  module Actions
    module Albums
      class Show < Web::Action
        def initialize(albums: AlbumRepository.new)
          @albums = albums
        end

        def handle(req, res)
          res.format = :txt
          res.body = albums.find(req.params[:id])
        end

        private

        attr_reader :albums
      end
    end
  end
end
