require "test_helper"

class NotificationMailerTest < ActionMailer::TestCase
  test "create_notification" do
    mail = NotificationMailer.create_notification
    assert_equal "Create notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "destroy_notification" do
    mail = NotificationMailer.destroy_notification
    assert_equal "Destroy notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
