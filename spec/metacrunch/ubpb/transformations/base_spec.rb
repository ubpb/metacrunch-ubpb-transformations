describe Metacrunch::UBPB::Transformations::Base do

  describe "#transform" do
    context "when called on base class" do
      it "raises an error" do
        expect{
          described_class.new.transform
        }.to raise_error(NotImplementedError)
      end
    end
  end

end
