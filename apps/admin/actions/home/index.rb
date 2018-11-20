module Admin
  module Actions
    module Home
      class Index < Admin::Action
        def call(*, res)
          res.body = "OK (admin)"
        end
      end
    end
  end
end
