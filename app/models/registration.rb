class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :crg_event
end