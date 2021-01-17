json.array! @speeches do |speech|
  json._id "#{speech.created_at.iso8601(6)}-speech-#{speech.id}"
  json.text speech.text
  json.version speech.version
  json.audio_url polymorphic_url(speech.audio, { host: ENV['HOST'] }) if speech.audio.attached?
end
