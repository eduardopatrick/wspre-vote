class Avaliacaoob < ApplicationRecord
   # attr_accessor :nomeobra
   # attr_accessor :cpf
   attr_accessor :image_base
   attr_accessor :nota

   validates :cpf, uniqueness: { scope: :nomeobra,
       message: "Só acontece de cpf uma vez por idobra" }

  Paperclip.interpolates :nomeobra do |attachment, style|
    attachment.instance.nomeobra
end

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/imagensobras/:nomeobra/:style/:filename",
   :path => ":rails_root/public/imagensobras/:nomeobra/:style/:filename"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  before_validation :parse_image
  attr_accessor :image_base

  private

  def parse_image
    image = Paperclip.io_adapters.for(image_base)
    image.original_filename = cpf + ".jpg"
    self.image = image
  end

  def save_attachments(params)
    params[:document_data].each do |doc|
      self.documents.create(:image_contents => doc) #change from :file to :file_contents
   end
  end
end
