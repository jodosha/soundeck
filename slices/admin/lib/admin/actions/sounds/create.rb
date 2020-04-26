require "admin/action"
require "dry/monads"

module Admin
  module Actions
    module Sounds
      class Create < Admin::Action
        include Dry::Monads[:result]

        include Deps[
          "sounds.commands.create",
          view: "views.sounds.new",
        ]

        def handle(req, res)
          case create.(req.params[:sound])
          in Success(_)
            res.redirect_to "/admin"
          in Failure[:validation, validation]
            res.render view, validation: validation
          end
        end
      end
    end
  end
end
