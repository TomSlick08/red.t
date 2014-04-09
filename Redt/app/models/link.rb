class Link < ActiveRecord::Base
	belongs_to :user

	validates :link_url, uniqueness: true, presence: true
validates :user_id, presence: true

end
