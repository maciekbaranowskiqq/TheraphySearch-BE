class Counsellor < ApplicationRecord
  validates :name, presence: true
  validates :paradigm, presence: true
end
