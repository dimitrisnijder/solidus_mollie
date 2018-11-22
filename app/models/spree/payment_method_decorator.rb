module SolidusMollie
  module PaymentMethodExtensions
    def redirect_url(_payment)
      nil
    end
  end
end

Spree::PaymentMethod.include SolidusMollie::PaymentMethodExtensions
