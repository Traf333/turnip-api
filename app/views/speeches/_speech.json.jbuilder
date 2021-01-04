json.extract! speech, :id, :created_at, :updated_at
json.url speech_url(speech, format: :json)
json.device_audio_url speech.device_audio_url
json.audio_url polymorphic_url(speech.audio, { host: 'https://turnip.ngrok.io' }) if speech.audio.attached?
