FactoryBot.define do
  factory :mollie_payment_method, class: Spree::PaymentMethod::MolliePayments do
    name "Mollie"
  end
end
