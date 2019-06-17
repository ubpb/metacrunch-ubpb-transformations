require "metacrunch/ubpb/transformations"

module Metacrunch::UBPB::Transformations
  class Base
    attr_reader :source
    attr_reader :target

    def call(data)
      @source = data[:source].dup || {}
      @target = data[:target].dup || {}

      self.transform

      {source: @source, target: @target}
    end

    def transform
      raise NotImplementedError, "Implement `#transform` in `#{self.class.name}`."
    end

  end
end
