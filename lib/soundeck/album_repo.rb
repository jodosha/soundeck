# frozen_string_literal: true

require "soundeck/entities/album"

module Soundeck
  class AlbumRepo
    def find(id)
      Entities::Album.new(id: id)
    end
  end
end
