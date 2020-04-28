# frozen_string_literal: true

ENV["HANAMI_ENV"] = "test"
require "hanami/init"

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.warnings = false

  config.expect_with :rspec do |expectations|
    # Default for RSpec 4
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    # Default for RSpec 4
    mocks.verify_partial_doubles = true
  end

  # Default for RSpec 4
  config.shared_context_metadata_behavior = :apply_to_host_groups

  # Limit a spec run to individual examples or groups you care about by tagging
  # them with `:focus` metadata.
  config.filter_run_when_matching :focus

  # Persist state between runs to support the `--only-failures` and
  # `--next-failure` CLI options
  config.example_status_persistence_file_path = "spec/examples.txt"

  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  # Print the 10 slowest examples and example groups at the end of the spec run
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies
  config.order = :random

  Kernel.srand config.seed
end
