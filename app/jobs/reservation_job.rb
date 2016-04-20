class ReservationJob < ActiveJob::Base
  queue_as :default

  def perform(list, guest, host, reservation_id, total_amount, list_url, reservation_url)
    ReservationMailer.booking_email(list, guest, host, reservation_id, total_amount, list_url, reservation_url).deliver_now
  end
end
