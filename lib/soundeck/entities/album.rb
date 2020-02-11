# frozen_string_literal: true
# auto_register: false

module Soundeck
  module Entities
    class Album
      attr_reader :id

      def initialize(id:)
        @id = id
      end

      def to_s
        %(#<#{self.class.name} id:#{id}>)
      end
    end
  end
end
