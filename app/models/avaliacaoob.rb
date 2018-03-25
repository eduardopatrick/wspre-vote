class Avaliacaoob < ApplicationRecord
  attr_accessor :idobra

   validates :cpf, uniqueness: { scope: :idobra,
     message: "Só acontece de cpf uma vez por idobra" } #Return true with SUCESS and return false with ERROR

  Paperclip.interpolates :idobra do |attachment, style|
    attachment.instance.idobra
end

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/imagensobras/:idobra/:style/:filename",
   :path => ":rails_root/public/imagensobras/:idobra/:style/:filename"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  before_validation :parse_image
  attr_accessor :image_base

  private

  def parse_image
    image = Paperclip.io_adapters.for(image_base)
    image.original_filename = "image.jpg"
    self.image = image
  end

  def save_attachments(params)
    params[:document_data].each do |doc|
      self.documents.create(:image_contents => doc) #change from :file to :file_contents
   end
  end
end
