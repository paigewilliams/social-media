class Link < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :url, :presence => true

  def plus_one
    self.rating += 1

  end

end
