class BackgroundProcessJob < ApplicationJob
  queue_as :default

  def perform(booking_id, message)
    # Do something later
    user = User.find(booking_id)
    puts "Successfull"
    NotificationMailer.create_notification(booking,message).deliver_now
  end
end
