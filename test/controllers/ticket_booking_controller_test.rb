require "test_helper"

class TicketBookingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ticket_booking_index_url
    assert_response :success
  end
end
