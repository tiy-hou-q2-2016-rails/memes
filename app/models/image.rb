class Image < ActiveRecord::Base
  validates :photo_url, presence: true
end
