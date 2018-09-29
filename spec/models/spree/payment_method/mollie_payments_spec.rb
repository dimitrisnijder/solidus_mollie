require 'spec_helper'

describe Spree::PaymentMethod::MolliePayments do
  let(:payment_method) { create(:mollie_payment_method, preference_source: "mollie_payments_preferences") }

  it "can be configured with static_model_preferences" do
    expect(payment_method.preferred_api_key).to eql 'api-key'
  end
end
