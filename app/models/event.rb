class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :members


  def set_start_time
    start_time.strftime("%B %d, %Y")
  end

  def set_end_time
    end_time.strftime("%B %d, %Y")
  end
end
