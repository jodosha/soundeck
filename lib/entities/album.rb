# frozen_string_literal: true

class Album
  attr_reader :id

  def initialize(id:)
    @id = id
  end

  def to_s
    %(#<#{self.class.name} id:#{id}>)
  end
end
