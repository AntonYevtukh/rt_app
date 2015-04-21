require 'factory_girl_rails'
FactoryGirl.factories.clear

FactoryGirl.define do
  factory :user do
    name     "AntonYevtukh"
    email    "tiger@pahom.com"
    password "pzkpfvtigr"
    password_confirmation "pzkpfvtigr"
  end
end