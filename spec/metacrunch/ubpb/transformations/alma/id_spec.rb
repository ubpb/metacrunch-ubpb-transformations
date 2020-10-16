describe Metacrunch::UBPB::Transformations::Alma::Id do

  context "001 is available" do
    marcxml_test(
      %{<controlfield tag="001">123456</controlfield>},
      id: "123456",
      mms_id: "123456"
    )
  end

  context "001 is NOT available" do
    marcxml_test(
      %{<controlfield tag="XXX"></controlfield>},
      id: nil,
      mms_id: nil
    )
  end

  context "001 is empty" do
    marcxml_test(
      %{<controlfield tag="001"></controlfield>},
      id: nil,
      mms_id: nil
    )
  end

end
