describe Metacrunch::UBPB::Transformations::Marcxml::IsSuperorder do

  context "When '000' is 'XXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="000">XXXXXXXXXXXXX</controlfield>},
      is_superorder: false
    )
  end

  context "When '051' is 'XXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="051">XXXXXXXXXXXXX</controlfield>},
      is_superorder: false
    )
  end

  context "When '052' is 'XXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="052">XXXXXXXXXXXXX</controlfield>},
      is_superorder: false
    )
  end

  context "When '051' is 'nXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="051">nXXXXXXXXXXXX</controlfield>},
      is_superorder: true
    )
  end

  context "When '051' is 'tXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="051">tXXXXXXXXXXXX</controlfield>},
      is_superorder: true
    )
  end

  context "When '052' is 'pXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="052">pXXXXXXXXXXXX</controlfield>},
      is_superorder: true
    )
  end

  context "When '052' is 'rXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="052">rXXXXXXXXXXXX</controlfield>},
      is_superorder: true
    )
  end

  context "When '052' is 'zXXXXXXXXXXXX'" do
    marcxml_test(
      %{<controlfield tag="052">zXXXXXXXXXXXX</controlfield>},
      is_superorder: true
    )
  end

end
