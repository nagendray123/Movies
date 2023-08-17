class NotificationMailer < ApplicationMailer

  def create_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@gmail.com', subject: " Your Booking #{object.class} has been created"
  end

  def destroy_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@gmail.com', subject: " Your Booking #{object.class} has been deleted"
  end
end
