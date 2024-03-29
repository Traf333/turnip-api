task :import_speeches, [:filepath] => :environment do |_task, args|
  text = File.read(args[:filepath])

  speeches = text.split("\n")
  p = Play.first
  p.speeches.destroy_all
  Speech.create(
    speeches.map { |s| { text: s, play_id: p.id } }
  )
  puts "Uploaded: #{speeches.size} speeches"
end

task :import_kislorod, [:filepath] => :environment do |_task, args|
  txt = File.read('lib/assets/kislorod.txt')
  author, title, description, *speeches = txt.split("\n").filter(&:present?)

  play = Play.create!(title: title, author: author, description: description, roles: ["Оля", "Юра", "Камилла", "Игорь", "Люба", "Сергей", "Настя"])
  Speech.transaction do
    speeches.each { |s| play.speeches.create!(text: s) }
  end

  puts "Uploaded: #{speeches.size} speeches"
end

task :import_khpp, [:filepath] => :environment do |_task, args|
  txt = File.read('lib/assets/khpp.txt')
  lines = txt.split("\r")

  play = Play.create!(title: 'ХПП', author: "Автор Петрович", description: "Спект 6 человек", roles: ["САМОЙЛОВ", "КАТЯ", "ТИМУР", "КОСТЯ", "АНТОН", "ЛИЗА"])
  Speech.transaction do
    lines.each { |s| play.speeches.create!(text: s) }
  end

  puts "Uploaded: #{play.speeches.size} speeches"
end
