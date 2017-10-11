describe Metacrunch::UBPB::Transformations::Marcxml::IsSuperorder do

  marcxml_test(
    described_class,
    %{<controlfield tag="000">XXXXXXXXXXXXX</controlfield>},
    is_superorder: false
  )

  marcxml_test(
    described_class,
    %{<controlfield tag="051">XXXXXXXXXXXXX</controlfield>},
    is_superorder: false
  )

  marcxml_test(
    described_class,
    %{<controlfield tag="052">XXXXXXXXXXXXX</controlfield>},
    is_superorder: false
  )

  marcxml_test(
    described_class,
    %{<controlfield tag="051">nXXXXXXXXXXXX</controlfield>},
    is_superorder: true
  )

  marcxml_test(
    described_class,
    %{<controlfield tag="051">tXXXXXXXXXXXX</controlfield>},
    is_superorder: true
  )

  marcxml_test(
    described_class,
    %{<controlfield tag="052">pXXXXXXXXXXXX</controlfield>},
    is_superorder: true
  )

  marcxml_test(
    described_class,
    %{<controlfield tag="052">rXXXXXXXXXXXX</controlfield>},
    is_superorder: true
  )

  marcxml_test(
    described_class,
    %{<controlfield tag="052">zXXXXXXXXXXXX</controlfield>},
    is_superorder: true
  )

end
