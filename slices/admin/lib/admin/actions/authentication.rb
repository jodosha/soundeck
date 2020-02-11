# frozen_string_literal: true

module Admin
  module Actions
    module Authentication
      def self.included(action)
        action.before :authenticate!
      end

      private

      AUTHENTICATION_HEADER = "X-Authentication"
      private_constant :AUTHENTICATION_HEADER

      def authenticate!(*, res)
        res.headers[AUTHENTICATION_HEADER] = "admin"
      end

      def keep_response_header?(header)
        super || header == AUTHENTICATION_HEADER
      end
    end
  end
end
