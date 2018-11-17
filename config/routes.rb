# frozen_string_literal: true

Hanami.application.routes do
  mount :web, at: "/" do
    root to: "home#index"
  end
end
