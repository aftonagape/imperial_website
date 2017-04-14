class Costume < ApplicationRecord
  has_many :members
  belongs_to :detachment

end
