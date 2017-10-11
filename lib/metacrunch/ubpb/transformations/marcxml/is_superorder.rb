require "metacrunch/ubpb/transformations/marcxml"

module Metacrunch::UBPB::Transformations

  class Marcxml::IsSuperorder < Base

    def transform
      f051 = source.controlfield("051")&.value || []
      f052 = source.controlfield("052")&.value || []

      target[:is_superorder] = begin
        f051[0] == "n" ||
        f051[0] == "t" ||
        f052[0] == "p" ||
        f052[0] == "r" ||
        f052[0] == "z"
      end
    end

  end
end
