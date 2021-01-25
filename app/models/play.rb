class Play < ApplicationRecord
  has_many :speeches

  def _id
    "#{created_at.iso8601(6)}-play-#{id}"
  end
end
