class Member < ApplicationRecord
  has_many :costumes
  has_many :events
end
