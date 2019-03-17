class MinyanMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

 self.smtp_settings = {  
  :enable_starttls_auto => true,
  :address => 'smtp.gmail.com',
  :port => 587,
  :domain => 'nofraud.com',
  :authentication => :plain,
  :user_name => 'review@nofraud.com',
  :password => ENV['REVIEW_GMAIL_PASS']}


  def hold_email(user)
    @user = user
    @minyan = Minyan.find_by_id(user.minyan_id)
    @name = @user.name
    @url = "https://portal.nofraud.com/transaction/#{transaction.url}"
    to = user.contact_info
    
    mail(:to => to, :subject => "Will you be by the Minyan - #{minyan.name}")
  end
end
