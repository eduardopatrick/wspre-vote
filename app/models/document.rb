class Document < ApplicationRecord
  belongs_to :avaliacaoobs
  before_validation :parse_image
  attr_accessor :image_contents
  has_attached_file :image
  validates_attachment :image, presence: true, content_type: { content_type: "application/jpg" }

   private

   def parse_image file = Paperclip.io_adapters.for(image_contents)
     file.original_filename = "image.jpg"
     self.file = file
   end
 end
