class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "akira_iseki@diveintocode.jp", subject: "Team権限が移譲されました"
  end
end
