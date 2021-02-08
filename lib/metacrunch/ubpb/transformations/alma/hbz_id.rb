require "metacrunch/ubpb/transformations/alma"

module Metacrunch::UBPB::Transformations
  class Alma::HbzId < Base

    def transform
      ids = source["035**a"]
      hbz_id = ids.find{|id| id.starts_with?("(DE-605)")}

      if hbz_id
        target[:hbz_id] = hbz_id.gsub("(DE-605)", "")
      end
    end

  end
end
