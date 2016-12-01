class LinkMailer < ApplicationMailer
  MODERATOR_EMAILS = ["moderators@example.com"]

  default from: "noreply@reddit-clone.com"

  def new_link(link)
    mail(to: MODERATOR_EMAILS, subject: "New link submitted")
  end
end
