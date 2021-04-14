# frozen_string_literal: true

module Main
  module Actions
    module Home
      class Index < Main::Action
        include Authentication::Skip
      end
    end
  end
end
