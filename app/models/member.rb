class Member < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :costumes
  has_many :events
end
