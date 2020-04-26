require "dry/monads"

module Admin
  module Sounds
    module Commands
      class Create
        include Dry::Monads[:result]

        include Deps["sounds.validation.sound_contract"]

        def call(input)
          validation = sound_contract.(input)

          if validation.success?
            # A real command would effect some change, but this is here purely
            # to test the action/view integration, so just pass through the
            # valid data
            Success(validation.to_h)
          else
            Failure[:validation, validation]
          end
        end
      end
    end
  end
end
