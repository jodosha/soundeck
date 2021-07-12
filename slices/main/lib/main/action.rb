# frozen_string_literal: true
# auto_register: false

require "hanami/action"

module Main
  class Action < Hanami::Action
    include Actions::Authentication
  end
end
