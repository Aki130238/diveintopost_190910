class SwitchingMailer < ApplicationMailer
  def switching_mail(switching)
    @switching = switching

    mail to: "akira_iseki@diveintocode.jp", subject: "Team権限が移譲されました"
  end
end
