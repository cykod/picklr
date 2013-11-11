# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "tester@tester.com"
    password "12345678"
  end
end
