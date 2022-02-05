class Gallery < ApplicationRecord
    has_many :gallery_images, :dependent => :destroy
end
