# frozen_string_literal: true

class AlbumRepository
  def find(id)
    Album.new(id: id)
  end
end
