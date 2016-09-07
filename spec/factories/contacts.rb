FactoryGirl.define do
  factory :contact do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :invalid_contact do
    first_name nil
  end
end
