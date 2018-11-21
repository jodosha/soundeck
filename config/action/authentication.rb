# frozen_string_literal: true

module Soundeck
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

    def authenticate!(*, res)
      res.headers[AUTHENTICATION_HEADER] = "base"
    end

    def keep_response_header?(header)
      super || header == AUTHENTICATION_HEADER
    end
  end
end
