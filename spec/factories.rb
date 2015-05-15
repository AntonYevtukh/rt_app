require 'factory_girl_rails'
FactoryGirl.factories.clear

FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@panzer.net"}
    password "Tiger1488"
    password_confirmation "Tiger1488"

    factory :admin do
      admin true
    end
  end
end