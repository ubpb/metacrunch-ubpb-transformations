require "pry" if !ENV["CI"]

require "simplecov"
SimpleCov.start do
  add_filter %r{^/spec/}
end

require "metacrunch/ubpb/transformations"

RSpec.configure do |config|
end

def marcxml_test(marcxml, expected_values, transformation: described_class.new)
  source = Metacrunch::Marcxml.parse(marcxml)
  target = {}
  data   = {source: source, target: target}

  expected_values.each_pair do |key, value|
    describe(key) do
      subject { transformation.call(data)[:target][key] }

      if value.is_a?(Proc)
        self.instance_eval(&value)
      else
        it { is_expected.to eq(value) }
      end
    end
  end
end
