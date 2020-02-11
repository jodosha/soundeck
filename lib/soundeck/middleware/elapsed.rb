# frozen_string_literal: true
# auto_register: false

module Soundeck
  module Middleware
    class Elapsed
      def initialize(app, version)
        @app = app
        @version = version
      end

      def call(env)
        starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        status, headers, body = @app.call(env)
        ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)

        headers["X-Elapsed-Time"] = (ending - starting).to_s
        headers["X-Elapsed-Version"] = @version

        [status, headers, body]
      end
    end
  end
end
