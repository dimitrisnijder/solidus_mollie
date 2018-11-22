module SolidusMollie
  module PaymentExtensions
    def redirect_url
      payment_method.redirect_url(self)
    end
  end
end

Spree::Payment.include SolidusMollie::PaymentExtensions
