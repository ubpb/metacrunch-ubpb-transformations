describe Metacrunch::UBPB::Transformations::Marcxml::GetHbzId do

  context "001, i2=1, sf=a is '123456'" do
    marcxml_test(%{
      <datafield tag="001" ind1="-" ind2="1">
        <subfield code="a">123456</subfield>
      </datafield>
    }, {
      hbz_id: "123456"
    })
  end

  context "001 is not available" do
    marcxml_test(%{
      <datafield tag="xxx">
        <subfield code="a">123456</subfield>
      </datafield>
    }, {
      hbz_id: nil
    })
  end

end
