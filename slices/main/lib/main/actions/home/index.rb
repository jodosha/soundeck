# frozen_string_literal: true

require "main/action"

module Main
  module Actions
    module Home
      class Index < Main::Action
        include Authentication::Skip

        def handle(*, res)
          Hanami.logger.debug("home")
          res.body = "OK"
        end
      end
    end
  end
end
