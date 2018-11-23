# frozen_string_literal: true

require_relative "./actions/authentication"

module Admin
  class Action < Hanami::Action
    # config.cookies = { max_age: 300 }
    # config.sessions = :cookie, { secret: ENV["ADMIN_SESSIONS_SECRET"] }

    include Actions::Authentication
  end
end
