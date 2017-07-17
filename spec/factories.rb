FactoryGirl.define do
  factory :user do
    email "ben@ben.com"
    password "benben"
    password_confirmation "benben"
    admin "true"
  end

  factory :product do
    name "synergistic metal cup"
    description "household"
    price "10"
  end

  factory :review do
    author "Darnold Bing"
    content "lorem ipsum comment"
    rating "4"
  end
end
