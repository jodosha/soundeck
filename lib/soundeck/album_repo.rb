# frozen_string_literal: true

module Soundeck
  class AlbumRepo
    def find(id)
      Entities::Album.new(id: id)
    end
  end
end
