FactoryGirl.define do
  factory :link do
    title "Sweet Search Engine"
    url "https://www.google.com"

    trait :invalid do
      title nil
    end
  end
end
