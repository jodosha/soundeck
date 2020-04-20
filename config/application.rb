# frozen_string_literal: true

require "hanami"

module Soundeck
  class Application < Hanami::Application
    require "soundeck/middleware/elapsed"

    # config.cookies  = { max_age: 600 }
    # config.sessions = :cookie, { secret: settings.soundeck_sessions_secret }
    config.middleware.use Middleware::Elapsed, "1.0"

    config.environment(:production) do |c|
      c.base_url = settings.soundeck_base_url
      c.logger = { level: :info, formatter: :json }
    end
  end
end
