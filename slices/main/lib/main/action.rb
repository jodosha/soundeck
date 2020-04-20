# frozen_string_literal: true
# auto_register: false

require "hanami/action"
require_relative "actions/authentication"

module Main
  class Action < Hanami::Action
    include Actions::Authentication
  end
end
