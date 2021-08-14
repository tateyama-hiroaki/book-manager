class Book < ApplicationRecord
  
  mount_uploader :image, ImageUploader
  
  def self.search(search)
    if search
      Book.where(['title LIKE ?', "%#{search}%"])
    else
      Book.all
    end
  end

  belongs_to :user
end
