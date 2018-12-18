# frozen_string_literal: true

require "hanami"

Hanami::Container.start(:lib)
require_relative "./application"

Hanami.boot
