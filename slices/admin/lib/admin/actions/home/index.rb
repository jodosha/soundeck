# frozen_string_literal: true

require "admin/action"

module Admin
  module Actions
    module Home
      class Index < Admin::Action
        def handle(req, res)
          res.session[:current_user] = "Admin"
          res.render view
        end
      end
    end
  end
end
