class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact_received.subject
  #
  def order_received(order)
    @order = order
    mail:to => order.email, :subject => 'pragmetic store order confirmation'
  end

  def order_shipped(order)
    @order = order
    mail :to => order.email, subject => 'pragmetic order shipped'
  end


end
