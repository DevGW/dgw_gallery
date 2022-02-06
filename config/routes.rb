Rails.application.routes.draw do
  get 'gallery', controller: 'gallery', action: 'galleries'
  get 'gallery/galleries'
  get 'gallery/manage'
  put "gallery/add_to_gallery/:id", controller: 'gallery', action: 'add_to_gallery'
  put "gallery/remove_from_gallery/:id", controller: 'gallery', action: 'remove_from_gallery'
  put "gallery/upload", controller: 'gallery', action: 'upload_to_gallery'
#   root to: 'gallery#index'
end
