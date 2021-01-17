json.title @play.title
json.author @play.author
# json.speeches @play.speeches.includes(:audio_attachment).order(:created_at) do |speech|
#   json.id speech.id
#   json.text speech.text
#   json.device_audio_url speech.device_audio_url
#   json.audio_url polymorphic_url(speech.audio, { host: 'https://turnip.ngrok.io' }) if speech.audio.attached?
# end
