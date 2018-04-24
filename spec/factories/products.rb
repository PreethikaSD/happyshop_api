FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { rand(0..10) }
    category_id nil
  end
end
