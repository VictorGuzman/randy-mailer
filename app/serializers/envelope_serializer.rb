class EnvelopeSerializer < ActiveModel::Serializer
  attributes :id, :subject, :body, :recipients
end
