class Comment < ActiveRecord::Base
  belongs_to :link

  validates :user_id, :link_id, :text, :presence => true

end
