class User < ActiveRecord::Base
  # has_many :link

  validates :name, :presence => true

end
