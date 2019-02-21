# frozen_string_literal: true

source "https://rubygems.org"

gem "hanami-utils",      "~> 2.0.alpha", require: false, git: "https://github.com/hanami/utils.git",      branch: "unstable"
gem "hanami-router",     "~> 2.0.alpha", require: false, git: "https://github.com/hanami/router.git",     branch: "unstable"
gem "hanami-controller", "~> 2.0.alpha", require: false, git: "https://github.com/hanami/controller.git", branch: "unstable"
gem "hanami-cli",        "~> 1.0.alpha", require: false, git: "https://github.com/hanami/cli.git",        branch: "unstable"
gem "hanami",            "~> 2.0.alpha", require: false, git: "https://github.com/hanami/hanami.git",     branch: "enhancement/container-actions-views"

gem "erbse"
gem "dry-view", "~> 0.6"

# gem "hanami", path: "../hanami/hanami"

group :plugins, :development do
  gem "hanami-reloader", "~> 1.0.alpha"
end

group :development do
  gem "guard-puma", "~> 0.5"
end

group :development, :test do
  gem "byebug", require: false
end

gem "puma",   "~> 3.12"
gem "dotenv", "~> 2.5"
