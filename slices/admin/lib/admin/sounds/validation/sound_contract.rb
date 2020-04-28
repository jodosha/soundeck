require "dry/validation"

module Admin
  module Sounds
    module Validation
      class SoundContract < Dry::Validation::Contract
        params do
          required(:title).filled(:string, min_size?: 2)
        end
      end
    end
  end
end
