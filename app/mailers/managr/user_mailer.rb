module Managr
  class UserMailer < ::Devise::Mailer
    defaults from: Managr.pref("mail/from_address", "noreply@example.com")
  end
end