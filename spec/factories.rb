FactoryGirl.define do
  factory :user do
    email "ben@ben.com"
    password "benben"
    password_confirmation "benben"
    admin "true"
  end
end
