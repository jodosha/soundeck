# frozen_string_literal: true

require_relative "./action/authentication"

module Soundeck
  class Action < Hanami::Action
    include Authentication
  end
end
