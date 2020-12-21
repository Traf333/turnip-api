json.title @play.title
json.author @play.author
json.speeches @play.speeches do |speech|
  json.id speech.id
  json.text speech.text
  json.audio_url url_for(speech.audio) if speech.audio.attached?
end
