# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/create_notification
  def create_notification
    NotificationMailer.create_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/destroy_notification
  def destroy_notification
    NotificationMailer.destroy_notification
  end

end
