class Notifierd < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifierd.user_mailer.subject
  #
  def user_mailer(contact)
    @contact = contact

    mail(:to => "from@example.com", :subject => "registered,")
  end
end
