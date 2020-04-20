# frozen_string_literal: true

require "main/action"

module Main
  module Actions
    module Home
      class Index < Main::Action
        include Authentication::Skip

        include Deps[view: "views.home.index"]

        def handle(*, res)
          Hanami.logger.debug("home")
          res.render view
        end
      end
    end
  end
end
