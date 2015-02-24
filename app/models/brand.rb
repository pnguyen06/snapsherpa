class Brand < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }
	scope :industry, proc { |industry| where(:industry => industry) }
	scope :deals, proc { |deals| where(:deals => true) }
	scope :previews, proc { |previews| where(:previews => true) }


	def self.search(search)
		if search
			where('lower(name) LIKE ?', "%#{search}%".downcase)
		else
			scoped
		end
	end
end
