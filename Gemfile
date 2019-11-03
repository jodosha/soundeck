# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "hanami", github: "hanami/hanami", branch: "enhancement/application-and-slices"
gem "hanami-cli", github: "hanami/cli", branch: "unstable"
gem "hanami-controller", github: "hanami/controller", branch: "hanami-application-support"
gem "hanami-router", github: "hanami/router", branch: "hanami-application-router-support"
gem "hanami-utils", github: "hanami/utils", branch: "unstable"

group :plugins, :development do
  # gem "hanami-reloader", "~> 1.0.alpha", git: "https://github.com/hanami/reloader.git", branch: "unstable"
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
