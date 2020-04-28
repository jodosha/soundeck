require "admin/view"

module Admin
  module Views
    module Sounds
      class New < Admin::View
        expose :sound do |validation: nil|
          validation&.to_h || {}
        end

        expose :errors do |validation: nil|
          validation&.errors&.to_h || {}
        end
      end
    end
  end
end
