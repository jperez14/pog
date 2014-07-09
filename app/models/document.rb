class Document < ActiveRecord::Base
	belongs_to :property


	default_scope -> { order('created_at DESC')}
	
	has_attached_file :record
	validates_attachment :record, content_type: { content_type: ["application/pdf", "image/tif", "image/tiff"] }

	validates :property_id, 	presence: true
	validates :toi, 					presence: true, length: { maximum: 15 }
	validates :date_recorded, presence: true
	validates :cfn, 					presence: true
	validates :county, 				presence: true

	after_save :update_property

	private

		def update_property
			self.property.touch
		end

end
