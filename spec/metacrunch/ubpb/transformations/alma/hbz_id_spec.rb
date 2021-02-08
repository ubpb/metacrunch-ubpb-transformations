describe Metacrunch::UBPB::Transformations::Alma::HbzId do

  context "009 is available" do
    marcxml_test(
      %{
        <record>
          <datafield ind1=" " ind2=" " tag="035">
            <subfield code="a">(DE-605)HT123456</subfield>
          </datafield>
        </record>
      },
      hbz_id: "HT123456"
    )
  end

  context "009 is NOT available" do
    marcxml_test(
      %{
        <record>
          <controlfield tag="XXX"></controlfield>
        </record>
      },
      hbz_id: nil
    )
  end

  context "009 is empty" do
    marcxml_test(
      %{
        <record>
          <controlfield tag="009"></controlfield>
        </record>
      },
      hbz_id: nil
    )
  end

end
