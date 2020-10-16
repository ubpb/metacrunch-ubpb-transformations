require "metacrunch/ubpb/transformations"

module Metacrunch
  module UBPB
    module Transformations
      module Helpers
        # Require and include all helper
        Dir["#{__dir__}/helpers/*_helper.rb"].each do |file|
          require file

          helper_name      = File.basename(file, ".rb").camelcase
          helper_namespace = self.to_s
          helper_const     = "#{helper_namespace}::#{helper_name}".constantize

          include helper_const
        end
      end
    end
  end
end
