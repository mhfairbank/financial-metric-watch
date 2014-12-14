class UserMailer < ActionMailer::Base
  default from: "financialmetricwatch@gmail.com"

  def test_email
    mail(to: "mhfairbank@gmail.com", subject: "Financial Metric Test", reply_to: "financialmetricwatch@gmail.com")
  end

  def trigger_email(user, listener)
    @user = user
    @listener = listener
    
    mail(to: @user.email, subject: "Listener Triggered", reply_to: "financialmetricwatch@gmail.com")
  end


end
