# frozen_string_literal: true

require_relative "./actions/authentication"

module Web
  class Action < Hanami::Action
    include Actions::Authentication
  end
end
