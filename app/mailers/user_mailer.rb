class UserMailer < ActionMailer::Base
  default from: "carlos@landscapingfox.com"

  def welcome_mail(user_id)
  	@user = User.find(user_id)
  	@name = @user.name == "NA" ? "There" : @user.name
  	@subject = @user.name == "NA" ? "Quick Question" : "#{@user.name}, You're doing it wrong"
  	@statistic = @user.statistic
  	mail to: @user.email, subject: @subject
  end

  def second_mail(user_id)
  	@user = User.find(user_id)
  	@name = @user.name == "NA" ? "There" : @user.name
  	@subject = @user.name == "NA" ? "Following Up: Sample Site" : "#{@user.name}, Following Up w/ a Sample Site"
  	@statistic = @user.statistic
  	mail to: @user.email, subject: @subject
  end
end

#Other Subject Lines to Test
#  15 Minutes to get #{@comapny naem} more customers