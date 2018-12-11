class Link < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :url, :presence => true

end
