require "pry" if !ENV["CI"]
require "simplecov"
require "metacrunch/ubpb/transformations"

SimpleCov.start

RSpec.configure do |config|
end


def marcxml_test(transformation_class, marcxml_string, expected_values = {})
  transformation = transformation_class.new
  source = Metacrunch::Marcxml.parse(marcxml_string)
  target = {}
  data   = {source: source, target: target}

  expected_values.each_pair do |key, value|
    describe(key) do
      subject {
        transformation.call(data)[:target][key]
      }

      if value.is_a?(Proc)
        self.instance_eval(&value)
      else
        it { is_expected.to eq(value) }
      end
    end
  end
end
