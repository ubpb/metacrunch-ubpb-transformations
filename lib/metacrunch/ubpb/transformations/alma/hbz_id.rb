require "metacrunch/ubpb/transformations/alma"

module Metacrunch::UBPB::Transformations
  class Alma::HbzId < Base

    def transform
      target[:hbz_id] = source["009"].presence
    end

  end
end
