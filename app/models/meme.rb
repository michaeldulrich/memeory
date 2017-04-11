class Meme < ApplicationRecord

  belongs_to :user

  scope :recent, lambda {order("created_at ASC")}

end
