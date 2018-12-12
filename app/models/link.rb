class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :user_id, :url, :presence => true

  scope :highest_rating, -> { order(rating: :desc)}


end
