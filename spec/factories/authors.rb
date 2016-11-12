FactoryGirl.define do
  factory :author do
    first_name "Alan"
    last_name "Turing"
    homepage "http://wikipedia.de/Alan_Turing"
  end
  factory :author2, :class => Author do
    first_name "Peter"
    last_name "Plagiarist"
    homepage "http://wikipedia.de/Alan_Turing"
  end
end