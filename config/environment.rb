# frozen_string_literal: true

require "soundeck"

module Soundeck
  class Application < Hanami::Application
    config.sessions = :cookie, { secret: ENV["SOUNDECK_SESSIONS_SECRET"] }
  end
end
