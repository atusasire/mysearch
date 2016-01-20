class Mybusiness < ActiveRecord::Base
	def self.search(search)
		where("name LIKE ?", "%#{search}%")
		where("category LIKE ?", "%#{search}%")
		where("village LIKE ?", "%#{search}%")
		where("district LIKE ?", "%#{search}%")
  	end
end
