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
