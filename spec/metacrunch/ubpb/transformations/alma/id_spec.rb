describe Metacrunch::UBPB::Transformations::Alma::Id do

  context "001 is available" do
    marcxml_test(
      %{
        <record>
          <controlfield tag="001">123456</controlfield>
        </record>
      },
      id: "123456",
      mms_id: "123456"
    )
  end

  context "001 is NOT available" do
    marcxml_test(
      %{
        <record>
          <controlfield tag="XXX"></controlfield>
        </record>
      },
      id: nil,
      mms_id: nil
    )
  end

  context "001 is empty" do
    marcxml_test(
      %{
        <record>
          <controlfield tag="001"></controlfield>
        </record>
      },
      id: nil,
      mms_id: nil
    )
  end

end
