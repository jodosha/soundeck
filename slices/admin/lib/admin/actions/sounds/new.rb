require "admin/action"

module Admin
  module Actions
    module Sounds
      class New < Admin::Action
        include Deps[view: "views.sounds.new"]

        def handle(_, res)
          res.render view
        end
      end
    end
  end
end
