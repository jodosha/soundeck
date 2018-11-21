# frozen_string_literal: true

require "soundeck"

module Soundeck
  class Application < Hanami::Application
    config.cookies  = { max_age: 600 }
    config.sessions = :cookie, { secret: ENV["SOUNDECK_SESSIONS_SECRET"] }
    config.middleware.use Middleware::Elapsed, "1.0"
  end
end
