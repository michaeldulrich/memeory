class Meme < ApplicationRecord

  #belongs_to :user

  validates :name,           :presence => true
  validates :content_type,   :presence => true
  validates :content,        :presence => true

  scope :recent, lambda {order("created_at ASC")}

end
