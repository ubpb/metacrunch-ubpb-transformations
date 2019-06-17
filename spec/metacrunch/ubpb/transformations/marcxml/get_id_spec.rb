describe Metacrunch::UBPB::Transformations::Marcxml::GetId do

  context "SYS is '123456'" do
    marcxml_test(
      %{<controlfield tag="SYS">123456</controlfield>},
      id: "123456"
    )
  end

  context "SYS is NOT available" do
    marcxml_test(
      %{<controlfield tag="XXX"></controlfield>},
      id: nil
    )
  end

  context "SYS is empty" do
    marcxml_test(
      %{<controlfield tag="SYS"></controlfield>},
      id: ""
    )
  end

end
