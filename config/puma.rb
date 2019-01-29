# frozen_string_literal: true

threads_count = ENV.fetch("HANAMI_MAX_THREADS") { 5 }
threads threads_count, threads_count

port        ENV.fetch("HANAMI_PORT") { 2300 }
environment ENV.fetch("HANAMI_ENV") { "development" }

# workers ENV.fetch("WEB_CONCURRENCY") { 2 }
# preload_app!
