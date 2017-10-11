describe Metacrunch::UBPB::Transformations::Marcxml::GetId do

  context "controlfield SYS is available" do
    marcxml_test(
      described_class,
      %{<controlfield tag="SYS">123456</controlfield>},
      id: "123456"
    )
  end

  context "controlfield SYS is NOT available" do
    marcxml_test(
      described_class,
      %{<controlfield tag="XXX"></controlfield>},
      id: nil
    )
  end

end
