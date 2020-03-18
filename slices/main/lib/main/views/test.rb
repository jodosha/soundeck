require "main/view"

module Main
  module Views
    class Test < Main::View
      expose :framework, default: "Hanami"
    end
  end
end
