# frozen_string_literal: true

require "main/action"

module Main
  module Actions
    module Home
      class Index < Main::Action
        include Authentication::Skip
      end
    end
  end
end
