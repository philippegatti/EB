class ChargesController < ApplicationController
def new
	@event=Event.find(params[:event_id])
end

def create
  @event=Event.find(params[:event_id])
  @amount = @event.price*100

  customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'eur',
  })

Attendance.create(event_id:@event.id, user_id:current_user.id, stripe_customer_id: customer.id)

redirect_to event_path(@event.id)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
