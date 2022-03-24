# spec/factories/product.rb
# ©José Bonnet
FactoryBot.define do
  factory :product do
    sequence(:code) { |c| "product_#{c}"}
    name {'Whatever name'}
    price {3.50}
  end
end
