# frozen_string_literal: true

require_relative "./actions/authentication"

module Admin
  class Action < Hanami::Action
    include Actions::Authentication
  end
end
