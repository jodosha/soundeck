# frozen_string_literal: true

Hanami.application.routes do
  # Hanami::Router#match_path? behaviour requires "/admin" to be mounted
  # _before_ "/", otherwise requests for "/admin" still match the "/" namespace,
  # since "/admin".start_with?("/") == true

  mount :admin, at: "/admin" do
    root to: "home#index"
  end

  mount :web, at: "/" do
    root to: "home#index"
    resources :albums, only: [:show]
  end
end
