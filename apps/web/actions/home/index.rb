# frozen_string_literal: true

module Web
  module Actions
    module Home
      class Index < Web::Action
        include Authentication::Skip

        def call(*, res)
          res.body = "OK"
        end
      end
    end
  end
end
