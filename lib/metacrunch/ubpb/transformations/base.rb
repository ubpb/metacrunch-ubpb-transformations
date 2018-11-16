require "metacrunch/ubpb/transformations"

module Metacrunch::UBPB::Transformations
  class Base
    attr_reader :source
    attr_reader :target

    def call(data)
      @source = data[:source]
      @target = data[:target]

      self.transform

      data
    end

    def transform
      # override in sub class
    end

  end
end
