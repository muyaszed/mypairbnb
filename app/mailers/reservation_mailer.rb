class ReservationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation.Mailer.subject
  #
  def Mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end


  def booking_email(list, customer, host, reservation_id, total_amount, listing_link, reservation_link)
    @list = list
  	@customer = customer
  	@host = host
  	@id = reservation_id
  	@total = total_amount
  	@reservation_link = reservation_link
  	@listing_link = listing_link

  	mail(to: @host.email, subject:"You've got a reservation for #{@list.home_type} in PairVnV(#{@id})")

  end
end
