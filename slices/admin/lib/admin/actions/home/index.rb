require "admin/action"

module Admin
  module Actions
    module Home
      class Index < Admin::Action
        def handle(*, res)
          res.body = "OK (admin)"
        end
      end
    end
  end
end
