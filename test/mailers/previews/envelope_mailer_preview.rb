# Preview all emails at http://localhost:3000/rails/mailers/envelope_mailer
class EnvelopeMailerPreview < ActionMailer::Preview
  def envelope_email_preview
    EnvelopeMailer.envelope_email(Envelope.first)
  end
end
