# frozen_string_literal: true

Hanami.application.routes do
  mount :web, at: "/" do
    root to: "home#index"
    resources :albums, only: [:show]
  end

  mount :admin, at: "/admin" do
    root to: "home#index"
  end
end
