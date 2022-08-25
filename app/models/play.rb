class Play < ApplicationRecord
  has_many :speeches

  def _id
    "#{created_at.iso8601(6)}-play-#{id}"
  end

  def roles_list
    roles.join(', ')
  end

  def roles_list=(str)
    self.roles = str.split(',').map(&:strip)
  end

  def source_from_file; end

  def source_from_file=(file)
    txt = File.read(file)
    lines = txt.split("\r")
    Speech.transaction do
      speeches.destroy_all
      lines.each { |s| speeches.create!(text: s.strip) if s.strip.length > 1 }
    end
  end
end
