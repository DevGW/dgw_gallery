class Gallery < ApplicationRecord
    model_name.instance_variable_set(:@route_key, 'gallery')
    has_many :gallery_images, :dependent => :destroy
end
