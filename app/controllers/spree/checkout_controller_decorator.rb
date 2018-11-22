module SolidusMollie
  module CheckoutControllerExtensions
    def update
      if update_order

        assign_temp_address
        return if follow_payment_redirect

        unless transition_forward
          redirect_on_failure
          return
        end

        if @order.completed?
          finalize_order
        else
          send_to_next_state
        end

      else
        render :edit
      end
    end

    private

    def follow_payment_redirect
      return unless params[:state] == "payment"

      payment = @order.payments.valid.last
      if redirect_url = payment.try(:redirect_url)
        redirect_to redirect_url
        true
      end
    end
  end
end

Spree::CheckoutController.prepend SolidusMollie::CheckoutControllerExtensions
