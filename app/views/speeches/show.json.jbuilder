json.id @speech.id
json._id "#{@speech.created_at.iso8601(6)}-@speech-#{@speech.id}"
json.text @speech.text
json.play_id @speech.play_id
json.updated_at @speech.updated_at
json.audio_url polymorphic_url(@speech.audio, { host: ENV['HOST'] }) if @speech.audio.attached?
