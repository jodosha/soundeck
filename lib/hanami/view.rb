# frozen_string_literal: true

require "dry/view"
require "hanami/utils/string"

module Hanami
  class View < Dry::View
    MODULE_SEPARATOR_TRANSFORMER = [:gsub, "::", "."].freeze

    attr_reader :name

    def initialize
      super()
      # FIXME: this logic is shared with Hanami::Action. Consider to extract it into hanami-utils
      @name = Utils::String.transform(self.class.name, MODULE_SEPARATOR_TRANSFORMER, :underscore) unless self.class.name.nil?
      freeze
    end
  end
end
