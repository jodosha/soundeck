# frozen_string_literal: true

require "hanami"

module Soundeck
  class Application < Hanami::Application
    require "soundeck/middleware/elapsed"

    config.actions.cookies  = {max_age: 600}
    config.actions.sessions = :cookie, {key: "soundeck.session", secret: settings.session_secret}
    config.middleware.use Middleware::Elapsed, "1.0"

    config.environment(:production) do |c|
      c.base_url = settings.base_url
      c.logger = {level: :info, formatter: :json}
    end
  end
end
