# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Web server
gem "puma", "~> 3.12"

# Hanami dependencies
gem "hanami", github: "hanami/hanami", branch: "enhancement/actions-views-rendering-1"
gem "hanami-cli", github: "hanami/cli", branch: "unstable"
gem "hanami-controller", github: "hanami/controller", branch: "enhancement/view-rendering-1"
gem "hanami-router", github: "hanami/router", branch: "unstable"
gem "hanami-utils", github: "hanami/utils", branch: "unstable"
gem "hanami-view", github: "hanami/view", branch: "master"

# Application dependencies
gem "dry-monads", "~> 1.0"
gem "dry-validation", "~> 1.0"
gem "slim", "~> 4.0"

group :plugins, :development do
  # gem "hanami-reloader", "~> 1.0.alpha", git: "https://github.com/hanami/reloader.git", branch: "unstable"
  gem "hanami-reloader", "~> 1.0.alpha"
end

group :development do
  gem "guard-puma", "~> 0.5"
end

group :development, :test do
  gem "byebug"
  gem "rspec", "~> 3.9"
end
