class MinyanMailer < ActionMailer::Base

  default from: 'minyan.checker@gmail.com'

 self.smtp_settings = {  
  :enable_starttls_auto => true,
  :address => 'smtp.gmail.com',
  :port => 587,
  # :domain => 'nofraud.com',
  :authentication => :plain,
  :user_name => 'minyan.checker@gmail.com',
  :password => ENV['GMAIL_PASS']}


  def reminder_email(link)
  	@link = link
    @user = User.find(@link.user_id)
    @minyan = Minyan.find_by_id(@user.minyan_id)
    @name = @user.name
    @url = "http://localhost:3000/daily_minyan_links/yes/#{@link.link}"
    to = @user.contact_info
    
    @link.update(notified: true)
    mail(:to => to, :subject => "Will you be by the Minyan - #{@minyan.name}")
  end

  def minyan_confirmation(user)
    @user = user
    @minyan = Minyan.find_by_id(@user.minyan_id)
    @name = @user.name
  
    to = @user.contact_info
    mail(:to => to, :subject => "#{@minyan.name} Will Be Happening")
  end

end
