class NotifyMailer < ApplicationMailer
  def notify_mail(email)
    @email = email
    mail to: @email, subject: "アジェンダが削除されました"
  end
end
