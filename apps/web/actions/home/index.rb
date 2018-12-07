# frozen_string_literal: true

module Web
  module Actions
    module Home
      class Index < Web::Action
        include Authentication::Skip

        def call(*, res)
          Hanami.logger.debug("home")
          res.body = "OK"
        end
      end
    end
  end
end
