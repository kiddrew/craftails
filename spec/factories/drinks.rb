# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :drink do
    name "MyString"
    image_url "MyString"
    description "MyText"
    instructions "MyText"
    glass_id 1
    garnish_id 1
  end
end
