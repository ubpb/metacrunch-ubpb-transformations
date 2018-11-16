require "metacrunch/ubpb/transformations/marcxml"

module Metacrunch::UBPB::Transformations
  class Marcxml::GetHbzId < Base

    def transform
      target[:hbz_id] = source.datafields("001", ind2: "1").subfields("a").values.first
    end

  end
end
