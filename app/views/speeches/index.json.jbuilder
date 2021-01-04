json.array! @speeches do |speech|
  json._id "speech-#{speech.id}"
  json.text speech.text
  json.device_audio_url speech.device_audio_url if speech.device_audio_url
  json.audio_url polymorphic_url(speech.audio, { host: ENV['HOST'] }) if speech.audio.attached?
end
