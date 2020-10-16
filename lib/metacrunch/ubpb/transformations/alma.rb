require "metacrunch/ubpb/transformations"

module Metacrunch
  module UBPB
    module Transformations
      module Alma
        Dir["#{__dir__}/alma/*.rb"].each { |file| require file }
      end
    end
  end
end

