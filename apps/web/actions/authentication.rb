# frozen_string_literal: true

module Web
  module Actions
    module Authentication
      module Skip
        def authenticate!(*, res)
          res.headers[AUTHENTICATION_HEADER] = "skipped"
        end
      end

      def self.included(action)
        action.before :authenticate!
      end

      private

      AUTHENTICATION_HEADER = "X-Authentication"
      private_constant :AUTHENTICATION_HEADER

      def authenticate!(*, res)
        res.headers[AUTHENTICATION_HEADER] = "web"
      end

      def keep_response_header?(header)
        super || header == AUTHENTICATION_HEADER
      end
    end
  end
end
