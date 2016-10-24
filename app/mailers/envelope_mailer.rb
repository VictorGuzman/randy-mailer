class EnvelopeMailer < ApplicationMailer
  default from: ENV['gmail_username']

  def envelope_email(envelope)
    @envelope = envelope
    mail(to: @envelope.recipients, subject: @envelope.subject)
  end
end
