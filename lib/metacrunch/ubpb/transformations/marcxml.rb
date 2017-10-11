require "metacrunch/ubpb/transformations"

module Metacrunch
  module UBPB
    module Transformations
      module Marcxml
        Dir["#{__dir__}/marcxml/*.rb"].each { |file| require file }
      end
    end
  end
end

