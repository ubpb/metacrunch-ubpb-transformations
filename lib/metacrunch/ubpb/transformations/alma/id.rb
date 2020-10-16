require "metacrunch/ubpb/transformations/alma"

module Metacrunch::UBPB::Transformations
  class Alma::Id < Base

    def transform
      id = source["001"].presence
      target[:id]     = id
      target[:mms_id] = id
    end

  end
end
