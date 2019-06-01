class ImageFile < ApplicationRecord
  mount_uploader :image, ImageFileUploader
end
