# frozen_string_literal: true

Hanami.application.routes do
  slice :main, at: "/" do
    root to: "home#index"

    # TODO: reenable when we support resource-based routes
    # resources :albums, only: [:show]
    get "albums/:id", to: "albums#show"
  end

  slice :admin, at: "/admin" do
    root to: "home#index"
  end
end
