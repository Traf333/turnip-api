json.title @play.title
json.author @play.author
json.speeches @speeches.includes(:audio_attachment).order(:created_at) do |speech|
  json._id "#{speech.created_at.iso8601(6)}-speech-#{speech.id}"
  json.text speech.text
  json.play_id speech.play_id
  json.updated_at speech.updated_at
  json.audio_url polymorphic_url(speech.audio, { host: ENV['HOST'] }) if speech.audio.attached?
end
