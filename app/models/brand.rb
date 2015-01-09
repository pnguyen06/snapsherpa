class Brand < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }
	scope :industry, proc { |industry| where(:industry => industry) }


	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end
end
