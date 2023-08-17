class SendingEmailJob < ApplicationJob
  queue_as :default

  def perform(booking)
    NotificationMailer.create_notification(booking).deliver_now
  end
end
 