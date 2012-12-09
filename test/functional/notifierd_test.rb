require 'test_helper'

class NotifierdTest < ActionMailer::TestCase
  test "user_mailer" do
    mail = Notifierd.user_mailer
    assert_equal "User mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
