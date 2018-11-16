require "metacrunch/ubpb/transformations/marcxml"

module Metacrunch::UBPB::Transformations
  class Marcxml::GetId < Base

    def transform
      target[:id] = source.controlfield("SYS")&.value
    end

  end
end
