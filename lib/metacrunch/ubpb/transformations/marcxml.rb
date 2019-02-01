require "metacrunch/ubpb/transformations"

module Metacrunch
  module UBPB
    module Transformations
      module Marcxml
        # Require all MARCXML transformations
        Dir["#{__dir__}/marcxml/*.rb"].each { |file| require file }

        # Require all MARCXML helpers and automatically include them
        # into the transformation base class.
        Dir["#{__dir__}/marcxml/helpers/*_helper.rb"].each do |file|
          require file
          clazz = File.basename(file, ".rb").camelcase.constantize
          parent::Base.include(clazz)
        end
      end
    end
  end
end

