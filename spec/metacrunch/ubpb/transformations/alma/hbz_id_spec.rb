describe Metacrunch::UBPB::Transformations::Alma::HbzId do

  context "009 is available" do
    marcxml_test(
      %{<controlfield tag="009">123456</controlfield>},
      hbz_id: "123456"
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
