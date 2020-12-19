json.title @play.title
json.author @play.author
json.speeches @play.speeches.limit(30), :id, :text
