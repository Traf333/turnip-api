class Speech < ApplicationRecord
  belongs_to :play, touch: true
  has_one_attached :audio
end
