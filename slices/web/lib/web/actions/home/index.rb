# frozen_string_literal: true

require "web/action"

module Web
  module Actions
    module Home
      class Index < Web::Action
        include Authentication::Skip

        def handle(*, res)
          Hanami.logger.debug("home")
          res.body = "OK"
        end
      end
    end
  end
end
