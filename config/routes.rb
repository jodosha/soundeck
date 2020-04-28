# frozen_string_literal: true

Hanami.application.routes do
  slice :main, at: "/" do
    root to: "home#index"

    # TODO: reenable when we support resource-based routes
    # resources :albums, only: [:show]
  end

  slice :admin, at: "/admin" do
    root to: "home#index"

    get "sounds/new", to: "sounds#new"
    post "sounds", to: "sounds#create"
  end
end
