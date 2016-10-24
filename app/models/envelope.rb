class Envelope < ActiveRecord::Base
  validate :check_recipients

  def check_recipients
    self.recipients.split(/,\s*/).each do |email|
      unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
        errors.add(:recipients, "Are invalid due to #{email}")
      end
    end
  end
end
