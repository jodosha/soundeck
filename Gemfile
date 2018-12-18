# frozen_string_literal: true

source "https://rubygems.org"

gem "hanami-utils",      "~> 2.0.alpha", require: false, git: "https://github.com/hanami/utils.git",      branch: "unstable"
gem "hanami-router",     "~> 2.0.alpha", require: false, git: "https://github.com/hanami/router.git",     branch: "unstable"
gem "hanami-controller", "~> 2.0.alpha", require: false, git: "https://github.com/hanami/controller.git", branch: "unstable"
gem "hanami-cli",        "~> 1.0.alpha", require: false, git: "https://github.com/hanami/cli.git",        branch: "unstable"
# gem "hanami",            "~> 2.0.alpha", require: false, git: "https://github.com/hanami/hanami.git",     branch: "feature/application"

gem "hanami", path: "../hanami/hanami"

group :plugins do
  gem "hanami-reloader", path: "../hanami/reloader"
end

gem "puma",   "~> 3.12"
gem "dotenv", "~> 2.5"
gem "byebug", require: false
