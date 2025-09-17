class Climb < ApplicationRecord
  belongs_to :user
  belongs_to :crg_event

  validates :station, presence: true, inclusion: { in: 0..68 }
  validates :color, presence: true
  validates :grade, presence: true
  validates :modifier, inclusion: { in: ["+", "-", ""] }
end
