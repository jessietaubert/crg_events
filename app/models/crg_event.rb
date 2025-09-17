class CrgEvent < ApplicationRecord
  has_many :crg_event_registrations
  has_many :users, through: :crg_event_registrations
  has_many :climbs
end