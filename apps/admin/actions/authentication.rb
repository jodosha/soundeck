# frozen_string_literal: true

module Admin
  module Actions
    module Authentication
      private

      def authenticate!(*, res)
        res.headers["X-Authentication"] = "admin"
      end
    end
  end
end
