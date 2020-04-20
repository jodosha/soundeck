# frozen_string_literal: true

require "main/action"

module Main
  module Actions
    module Albums
      class Show < Main::Action
        include Deps["application.album_repo"]

        def handle(req, res)
          album = album_repo.find(req.params[:id])

          res.format = :txt
          res.body = "Album: #{album.id}"
        end
      end
    end
  end
end
