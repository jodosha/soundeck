# frozen_string_literal: true

module Web
  module Actions
    module Home
      class Index < Web::Action
        include Authentication::Skip

        def handle(*, res)
          res[:planet] = "Earth"
        end
      end
    end
  end
end
