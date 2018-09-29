module Spree
  class PaymentMethod::MolliePayments < Spree::PaymentMethod
    preference :api_key, :string
  end
end
